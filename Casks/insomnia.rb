cask 'insomnia' do
  version '5.0.5'
  sha256 'ecec050a7bcc4629dc245e1f0e1afc63c2b7b1f8c6220f51b3d29dff1ae55ee4'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '99e8bebb620a043193b1b61deec7e091d8354c4f464c149a1a93230676ed7afb'
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
