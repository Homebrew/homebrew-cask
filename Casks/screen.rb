cask 'screen' do
  version '1.0.28'
  sha256 '9259dbca0c6c0f23f0d5bf9a6e082e068eadbe64d42bea7a6cce8b0a6e3d2f0e'

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
