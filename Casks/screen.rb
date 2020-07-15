cask 'screen' do
  version '2.1.2'
  sha256 'bebbbcd18e224814287f84ea1144bc8c8495cee4b46af2c133d8cbc664e3ad72'

  url "https://download.screen.so/desktop-app/darwin/#{version}/Screen.dmg"
  appcast 'https://download.screen.so/'
  name 'Screen'
  homepage 'https://screen.so/'

  auto_updates true

  app 'Screen.app'

  zap trash: [
               '~/Library/Application Support/Screen',
               '~/Library/Preferences/so.screen.screen.app.plist',
             ]
end
