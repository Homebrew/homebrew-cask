cask 'insomnia' do
  version '7.1.1'
  sha256 '7718dd2c1a6ec0edafe36116d9123cda80b769abadc2d4fc5c5389922c7dfa6f'

  # github.com/Kong/insomnia/ was verified as official when first introduced to the cask
  url "https://github.com/Kong/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  appcast 'https://api.insomnia.rest/changelog.json?app=com.insomnia.app'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap trash: [
               '~/Library/Application Support/Insomnia',
               '~/Library/Caches/com.insomnia.app',
               '~/Library/Caches/com.insomnia.app.ShipIt',
               '~/Library/Cookies/com.insomnia.app.binarycookies',
               '~/Library/Preferences/ByHost/com.insomnia.app.ShipIt.*.plist',
               '~/Library/Preferences/com.insomnia.app.helper.plist',
               '~/Library/Preferences/com.insomnia.app.plist',
               '~/Library/Saved Application State/com.insomnia.app.savedState',
             ]
end
