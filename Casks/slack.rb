cask 'slack' do
  version '2.0.0'
  sha256 'd142f6ed26252c40ca56218aa95675be94788aea1516088a687ad535539dc3e0'

  # slack-ssb-updates.global.ssl.fastly.net was verified as official when first introduced to the cask
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          checkpoint: 'c9346dc2dea0f5a71071e5fbb210afd0cc6f78382c1435d498a845b8338bc420'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  auto_updates true

  app 'Slack.app'
end
