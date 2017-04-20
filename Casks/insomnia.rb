cask 'insomnia' do
  version '5.0.10'
  sha256 '27c6c0a3be73df112b3cd38f5c649c1516180cba782fb06a6235e7f9ee7a388f'

  url "https://downloads.insomnia.rest/mac/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '3fb7741dbb3282eb2a2e6e15ff481eb40bd71bc701aa2e3fd0e418d2335f90ba'
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
