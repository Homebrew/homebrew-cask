cask 'screen' do
  version '1.2.3'
  sha256 'c75071319e2a7f83bdc043524f97a23e1600ea53b8ab02d3261f658d9c07963f'

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
