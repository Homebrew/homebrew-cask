cask :v1 => 'slack' do
  version '1.1.4'
  sha256 'b3a6c2b651cf98d7bb817c063b3fbc9c5bb7f7ecfeb766359d1d85147267aa28'

  # fastly.net is the official download host per the vendor homepage
  url "https://slack-ssb-updates.global.ssl.fastly.net/mac_public_releases/slack-#{version}.zip"
  name 'Slack'
  homepage 'https://slack.com/'
  license :gratis

  app 'Slack.app'
end
