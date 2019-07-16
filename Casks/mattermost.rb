cask 'mattermost' do
  version '4.2.1'
  sha256 '980e2c2b174ed594ba2c16aa1122dc096e1c1bd3eaeba6d25cb2ca8fa4faac72'

  url "https://releases.mattermost.com/desktop/#{version}/mattermost-desktop-#{version}-mac.zip"
  appcast 'https://github.com/mattermost/desktop/releases.atom'
  name 'Mattermost'
  homepage 'https://about.mattermost.com/'

  app 'Mattermost.app'
end
