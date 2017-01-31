cask 'insomnia' do
  version '4.2.5'
  sha256 'f0a189633d1d8e81c7bd29d5c33af4610c4d657bdbc7a69111f27cedc86d4913'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '980346001334bed98f762948801287a9295c606e5b4e45d4bd7c044c1313e965'
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
