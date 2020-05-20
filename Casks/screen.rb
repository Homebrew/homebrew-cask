cask 'screen' do
  version '1.2.0'
  sha256 '93745c77368226a633be05091bb2533e5d29fe23ffffbbb4012d6bbe1dc595e0'

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
