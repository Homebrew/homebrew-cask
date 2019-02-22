FROM ruby:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache git

LABEL "com.github.actions.name"="Homebrew Cask Template Sync"
LABEL "com.github.actions.description"="Sync templates across Homebrew Cask taps."
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

ADD sync.rb /sync.rb

CMD ["/sync.rb"]
