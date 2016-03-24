cask 'slack' do
  version '2.0.1'
  sha256 'a903dd21f72c7808803de0f59705411602d3411750eee829a26d3834dad7694b'

  # slack-ssb-updates.global.ssl.fastly.net was verified as official when first introduced to the cask
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          checkpoint: '586e0bc6cce7c1196b18e88f6b70474b03fd04812e9e5eb99dde3b27ada65e75'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  auto_updates true

  app 'Slack.app'
end
