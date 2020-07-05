cask 'screen' do
  version '2.0.1'
  sha256 '71f857a2d3b6e2e40cc1da2966440bcfca50ec626c7af46ad4114ea472e56472'

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
