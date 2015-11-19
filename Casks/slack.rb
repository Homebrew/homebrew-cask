cask :v1 => 'slack' do
  version '1.1.7'
  sha256 '83da0591a20efe9a265e5d3579c67b29d071f366bef0b534f3bfa565f64de954'

  # fastly.net is the official download host per the vendor homepage
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => 'd514f17a63177586191a2e7955ac4dbcc8b10ce2eb56c4ae992b69b1e543f22e'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
