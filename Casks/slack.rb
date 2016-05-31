cask 'slack' do
  version '2.0.3'
  sha256 '0859a1742d339a1ae46fd5d68ff259da2efd649acdde1231f06a3d4e43810d47'

  # slack-ssb-updates.global.ssl.fastly.net was verified as official when first introduced to the cask
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          checkpoint: '16fdeec6794f180b946510dab4b4a5d844182d2631c81219f4601a931db4d104'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  auto_updates true

  app 'Slack.app'
end
