cask 'insomnia' do
  version '6.4.1'
  sha256 '8b880ad29f9c3b52def7a3ab46751803c8fc4025a5e10736cb6ee10c5e0550db'

  # github.com/getinsomnia/insomnia was verified as official when first introduced to the cask
  url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
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
               '~/Library/Preferences/com.insomnia.app.helper.plist',
               '~/Library/Preferences/com.insomnia.app.plist',
               '~/Library/Saved Application State/com.insomnia.app.savedState',
             ]
end
