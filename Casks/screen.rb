cask 'screen' do
  version '1.0.17'
  sha256 '2f02dfaf4132e7eeba1578fff0b3169031e9405364b2e3ac91ed17d7895dfc8d'

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
