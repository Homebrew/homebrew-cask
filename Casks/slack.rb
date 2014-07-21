class Slack < Cask
  version '0.44.2'
  sha256 '2b24fa40d0c928bd1cba82263dbb34b12cf9486e7b6dfff5d24216a6b89d4584'

  url 'http://slack.com/ssb/download-osx'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1'
  homepage 'http://slack.com'

  link "Slack #{version}.app"
end
