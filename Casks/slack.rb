cask :v1 => 'slack' do
  version '1.1.8'
  sha256 'a3c9833329da4f1fc11947f5d944742caf95efca6d8246e9f8f6887b40686d6a'

  # fastly.net is the official download host per the vendor homepage
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => 'd514f17a63177586191a2e7955ac4dbcc8b10ce2eb56c4ae992b69b1e543f22e'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
