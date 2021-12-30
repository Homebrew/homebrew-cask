FROM ruby:alpine

RUN apk update && apk upgrade && \
    apk add --no-cache git

LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

RUN gem install octokit

ADD templates.rb /templates.rb
ADD labels.rb /labels.rb
