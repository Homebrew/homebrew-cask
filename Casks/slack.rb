cask 'slack' do
  version '1.1.9'
  sha256 'fd32096f1cd27e960cc39b3a3c08ca8b308a49fc4ca6c7ac5eb064219f8ea520'

  # fastly.net is the official download host per the vendor homepage
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :sha256 => '9318f7a5d3593a5cb957c64113f8f3e3b334dbf0865be8f72162f31169320d3d'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
