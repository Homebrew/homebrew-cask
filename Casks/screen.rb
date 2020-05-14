cask 'screen' do
  version '1.0.35'
  sha256 '92e49a1ce111997c4be313f272a3596d76aae4785662cdc5a7796ad5acd2d8c6'

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
