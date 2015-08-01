cask :v1 => 'slack' do
  version '1.1.3'
  sha256 '9b87c38c17e124b8753a5a2310de4d820fd023c025e938bbb3eb8b2062589ec6'

  # hockeyapp.net is the official download host per the appcast feed
  url 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1/app_versions/15?format=zip&avtoken=8216365d9a223bf0a1656302aff5751d758cf473'
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => '861020e5e39f1c87fce3b5a1cd67b02845e0e0a7937ec818e8978c145d659f22'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
