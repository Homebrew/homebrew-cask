class Slack < Cask
  version 'latest'
  sha256 :no_check

  url 'http://slack.com/ssb/download-osx'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1'
  homepage 'http://slack.com'

  link 'Slack.app'
end
