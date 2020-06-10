cask 'insomnia' do
  version '2020.2.2'
  sha256 'ba80c77f973009af3f72dfa6f06202c41f157aa36b8dbc6c175444516796819f'

  # github.com/Kong/insomnia/ was verified as official when first introduced to the cask
  url "https://github.com/Kong/insomnia/releases/download/core%40#{version}/Insomnia.Core-#{version}.dmg"
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
