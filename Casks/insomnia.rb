cask 'insomnia' do
  version '5.3.3'
  sha256 'a266082405fa42e42e3ad7be9a83de69dd042460bbbde5d13012799772723318'

  url 'https://builds.insomnia.rest/downloads/mac/latest'
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '04e8beea33c6395bf40b02fa8f1aa05632d9a3e1c0edd8de6b8bc43b4930c371'
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
