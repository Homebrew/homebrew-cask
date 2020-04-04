cask 'screen' do
  version '1.0.23'
  sha256 'fa53f449dcd2c4537b81f09e14e9e04031445c148527550de75f11dbfdc21e2b'

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
