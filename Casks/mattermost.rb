cask 'mattermost' do
  version '4.3.0'
  sha256 '9dcf760e98edce0c5ac13fc4b2c5a10094ac3311456157b62c4064d1b00933a8'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
