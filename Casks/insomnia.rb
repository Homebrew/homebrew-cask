cask 'insomnia' do
  version '5.3.6'
  sha256 '072fd1f7b234cd4e69c8e9b622c3e436e0f860f64696bde3d43ab95dacfc2028'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'c4d09787cd2cf8113c7bce7c0c794625b49cc67835862644e734f968c7b68d52'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap delete: [
                '~/Library/Application Support/Insomnia',
                '~/Library/Caches/com.insomnia.app',
                '~/Library/Preferences/com.insomnia.app.helper.plist',
                '~/Library/Preferences/com.insomnia.app.plist',
                '~/Library/Saved Application State/com.insomnia.app.savedState',
              ]
end
