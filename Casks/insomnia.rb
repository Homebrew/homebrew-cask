cask 'insomnia' do
  version '5.0.20'
  sha256 '975fefbdf6cdc07da7b9cbd0f6aa97115da92bf26498613c86bb118a7a343c21'

  url 'https://builds.insomnia.rest/downloads/mac/latest'
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'a8da7a8d60f5d091a3fc68b7c4a630af5e8c01b19c385a4b4396ef7a149feb5e'
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
