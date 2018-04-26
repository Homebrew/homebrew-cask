cask 'insomnia' do
  version '5.16.1'
  sha256 '42f3793b183dce2738d1161aa3d42a09252c245968a7109158df5292e4a51daa'

  # github.com/getinsomnia/insomnia was verified as official when first introduced to the cask
  url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '4d13b3f9579b6f7aa1c8e44138e2c9cd0aebf80ca92e8b4c6e15a093062ab749'
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
