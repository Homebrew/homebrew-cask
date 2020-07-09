cask 'screen' do
  version '2.1.0'
  sha256 '3118640fc1a06fdb6ede84eea627a7343f6c371d0656710e2e8adcaf4722aaab'

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
