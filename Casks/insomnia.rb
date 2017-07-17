cask 'insomnia' do
  version '5.6.1'
  sha256 '6e0efcfe54f146a0977ebd50e007ffed94a3a882c1bb97c66b9455309a73959c'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'e7935df05984beb8175330cd9f03bbf3346ed633bef7d968e4f570e3223af45a'
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
