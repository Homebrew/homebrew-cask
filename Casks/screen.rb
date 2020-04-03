cask 'screen' do
  version '1.0.21'
  sha256 '88d4ec1876f533488d493b2962f858c635be631d5a3dfb9ac6e583ece224ff0b'

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
