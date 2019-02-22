FROM linuxbrew/alpine

LABEL "com.github.actions.name"="Homebrew Cask Automerge"
LABEL "com.github.actions.description"="Merge cask version bump pull requests."
LABEL "com.github.actions.icon"="git-pull-request"
LABEL "com.github.actions.color"="yellow"

ENV HOMEBREW_DEVELOPER=1
ENV HOMEBREW_NO_AUTO_UPDATE=1

RUN brew update-reset
RUN brew ruby -e 'Homebrew.install_gem! "git_diff"'
ADD automerge.rb /automerge.rb
ADD git_diff_extensions.rb /git_diff_extensions.rb
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
