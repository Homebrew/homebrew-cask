cask 'mattermost' do
  version '4.2.3'
  sha256 'bde028f596ac3bc20ecfd04693ffe497b7e9979babd3436c2438500afecfa732'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
