cask 'mymonero' do
  version '1.1.13'
  sha256 'c7bc92419cf16f514ba7cbb3affffda417e0d5ea2fc446bdc3fff9efc2732c43'

  # github.com/mymonero/mymonero-app-js/ was verified as official when first introduced to the cask
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
