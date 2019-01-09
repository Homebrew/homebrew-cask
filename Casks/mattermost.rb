cask 'mattermost' do
  version '4.2.0'
  sha256 '04643630aa9801cb12252960118f65a5c742100f5bcef51d9db4461ab076584c'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
