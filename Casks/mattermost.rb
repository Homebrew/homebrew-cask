cask 'mattermost' do
  version '4.2.2'
  sha256 'a908c990933400de2fb40ca947a3e3dce469ea7cb16fd2e9019324b4a6f491d6'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
