cask 'screen' do
  version '1.0.24'
  sha256 '6667a58d998080dcc75c2c6ff1c029e7c4154f9bf5a5a45448154fce503b95fd'

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
