cask 'insomnia' do
  version '5.0.2'
  sha256 '3e0033953ec1521076fd4b2fbeddad0b34ecf6e92442f4e6c89f08d5868b6388'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'd506c85afaac53ce8f6c340ee0e67fca8fd15903a9a6cc88b89a902db0030873'
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
