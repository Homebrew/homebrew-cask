cask 'mymonero' do
  version '1.1.11'
  sha256 '7c53643af43c3c2c38db489372667ef25e16632d0d2b2abb51d4f4c6b2a6b5d9'

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
