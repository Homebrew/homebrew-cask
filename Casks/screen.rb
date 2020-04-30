cask 'screen' do
  version '1.0.30'
  sha256 'cc202df94a222750ca079b1a4b6c5a05c03356e712821cc0a7635c33286e2c6b'

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
