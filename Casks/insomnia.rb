cask 'insomnia' do
  version '5.11.5'
  sha256 '71f4b0ea9a72b6b835573a85b2323646bc25f4d2caac62f7e36fbc06c7cf4417'

  # github.com/getinsomnia/insomnia was verified as official when first introduced to the cask
  url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  appcast 'https://github.com/getinsomnia/insomnia/releases.atom',
          checkpoint: '39b1cb9ca5b151bafd88e907be5e5b3fa7dcd42af12e94e63b58a15bc24a77f2'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Caches/com.insomnia.app.ShipIt',
                '~/Library/Cookies/com.insomnia.app.binarycookies',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Insomnia',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
              ]
end
