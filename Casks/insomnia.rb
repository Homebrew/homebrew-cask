cask 'insomnia' do
  version '4.2.9'
  sha256 '1e72f36c4f5fee44064250a9df86615dbcc3b1766d7f178413af1a7608579557'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '3ac85ff14c87e8a720bde9532aa5b32120ecb0c5694f3a799a11e70c23ed0898'
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
