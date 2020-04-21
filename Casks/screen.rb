cask 'screen' do
  version '1.0.25'
  sha256 '5f3120e7d479cb82e3877e42d5c0134f6a12c48b4a42f4fa22b6afb5327efe10'

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
