cask 'mattermost' do
  version '4.3.1'
  sha256 'c9b40c55725337c116b7fe3694a20243fdcc55b32cb0539e50fc56efb2aa7981'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
