cask 'insomnia' do
  version '5.7.14'
  sha256 '2daa89ceb6c0fbde3a53528bb44383f14e992155ef7eb2933aa53954014359c6'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '83c9834614e1380d255869deb3cc7ad7eca13cafdd3d3d9ff3d9d94c0b2bd3ca'
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
