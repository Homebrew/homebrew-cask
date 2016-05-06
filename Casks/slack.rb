cask 'slack' do
  version '2.0.2'
  sha256 '460b5e2d0d8764e105547d295394522c468452ca8f5b495e89ab4a9de58a062a'

  # slack-ssb-updates.global.ssl.fastly.net was verified as official when first introduced to the cask
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          checkpoint: '715106fd7e15b6570cc047bc74bb96d8bb2ce95d62b09d64039f360b0cfae6d7'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  auto_updates true

  app 'Slack.app'
end
