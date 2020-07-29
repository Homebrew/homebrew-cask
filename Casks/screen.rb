cask 'screen' do
  version '2.0.0'
  sha256 '4d27afcab75cae4cfc760f0028cd886a4e746e7151b88410014cccc7dc5e1f37'

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
