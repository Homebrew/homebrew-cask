cask 'insomnia' do
  version '4.2.11'
  sha256 'b26d7090b6a97c40b8273c72b9721045f4ee228f537c58120f0bd87960f8d1c8'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'd45b2f6a4342268859ab01c0ae4d37dfb3cc8c53ccd3ace0dc183141281e7b7f'
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
