cask 'insomnia' do
  version '2020.1.3'
  sha256 '35de4caeac06a7e62b9898db1f75e20212c1a52df9af578ec78454e817ba566d'

  # github.com/Kong/insomnia/ was verified as official when first introduced to the cask
  url "https://github.com/Kong/insomnia/releases/download/designer%40#{version}/Insomnia.Designer-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml'
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
