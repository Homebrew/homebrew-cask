cask 'insomnia' do
  version '5.8.3'
  sha256 '6b9a70efa26e8b95dba86a3dc353935ef0a8d1a470d4516ee3b683b50ce9603c'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '21a856dbb8f6cbe5eed366078ad2720a1b4217283e29ed16658453da16992087'
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
