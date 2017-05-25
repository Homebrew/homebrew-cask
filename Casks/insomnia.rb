cask 'insomnia' do
  version '5.1.0'
  sha256 'aa442dc5eab22513dda74dd2b3e690879e3d0af957e5085b4a165ae7574c3946'

  url 'https://builds.insomnia.rest/downloads/mac/latest'
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '7e3d50f7faa76ba6e0644789039e8c11e367341788c251e05cc44c0cbd29b3a3'
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
