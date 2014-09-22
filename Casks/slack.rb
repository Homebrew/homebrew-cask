class Slack < Cask
  version '0.44.2'
  sha256 '2b24fa40d0c928bd1cba82263dbb34b12cf9486e7b6dfff5d24216a6b89d4584'

  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/app_versions/2?format=zip&amp;avtoken=b79aac107b7fda6c56fc5af6052bbc1713da870e'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1'
  homepage 'http://slack.com'

  app "Slack #{version}.app"
end
