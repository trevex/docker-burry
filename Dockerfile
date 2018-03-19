FROM golang:1.10-alpine


RUN apk update && apk upgrade && apk add --no-cache bash git openssh
RUN go get -d -v github.com/mhausenblas/burry.sh
RUN go install -v github.com/mhausenblas/burry.sh

VOLUME ["/backup"]
WORKDIR /backup

CMD ["burry"]