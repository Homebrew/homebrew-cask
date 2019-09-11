cask 'mymonero' do
  version '1.1.12'
  sha256 '8acb1393883787f12caec5afed04198c6fe1cb6bea0f9ed8acc59eb4318993e5'

  # github.com/mymonero/mymonero-app-js was verified as official when first introduced to the cask
  url "https://github.com/mymonero/mymonero-app-js/releases/download/v#{version}/MyMonero-#{version}.dmg"
  appcast 'https://github.com/mymonero/mymonero-app-js/releases.atom'
  name 'MyMonero'
  homepage 'https://mymonero.com/'

  app 'MyMonero.app'

  zap trash: [
               '~/Library/Application Support/MyMonero',
               '~/Library/Saved Application State/com.mymonero.mymonero-desktop.savedState',
               '~/Library/Preferences/com.mymonero.mymonero-desktop.plist',
               '~/Library/Logs/MyMonero',
             ]
end
