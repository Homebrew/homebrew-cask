cask 'insomnia' do
  version '5.11.0'
  sha256 '3bb1d1810a7c585ae60186c6f25d8965a19c4bc48b23dc2f4a294a872209c6c6'

  # github.com/getinsomnia/insomnia was verified as official when first introduced to the cask
  url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  appcast 'https://github.com/getinsomnia/insomnia/releases.atom',
          checkpoint: 'dcc224d51718d9f4c850e75aae7642e0477cf57f529472ccf923c850fbe9b56f'
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
