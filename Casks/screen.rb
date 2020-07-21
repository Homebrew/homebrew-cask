cask 'screen' do
  version '2.1.3'
  sha256 '296353d2d9ad0583ec49d96b1a192b5928cf5c5e60e7a3fd15b0406224201786'

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
