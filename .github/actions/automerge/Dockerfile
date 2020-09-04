FROM homebrew/ubuntu16.04:master

ENV HOMEBREW_DEVELOPER=1
ENV HOMEBREW_NO_AUTO_UPDATE=1

ADD automerge.rb /automerge.rb
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
