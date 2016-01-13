cask 'slack' do
  version '1.1.9'
  sha256 'fd32096f1cd27e960cc39b3a3c08ca8b308a49fc4ca6c7ac5eb064219f8ea520'

  # fastly.net is the official download host per the vendor homepage
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  appcast 'https://rink.hockeyapp.net/api/2/apps/38e415752d573e7e78e06be8daf5acc1',
          :checkpoint => 'd5f1986c0722a66921d3f82a53f75eae80cc93e0cbca54dfe27ed88c05b35395'
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
