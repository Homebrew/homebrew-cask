cask 'screen' do
  version '1.2.7'
  sha256 'a80f6e5dd8c2e6dd03503bba0d222d7bbef96aab4a815c71ab8b7becd1fb66d9'

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
