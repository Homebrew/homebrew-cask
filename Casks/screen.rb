cask 'screen' do
  version '1.0.26'
  sha256 '4692bcbd4c9046e7032b46aa8e575bcb297c077d4b10fc6b05749cbaf6cd3966'

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
