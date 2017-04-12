cask 'insomnia' do
  version '5.0.4'
  sha256 '526ace39dc22d2bec77fa5e0bfd78e63f47a84623e3955b1ee79b553e5792d1a'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '5867aa0a0d106606b89374a9b21b843fb679c9b908277aeb4ba8d723b83ef414'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Application Support/Insomnia',
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ]
end
