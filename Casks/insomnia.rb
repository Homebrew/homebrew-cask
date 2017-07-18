cask 'insomnia' do
  version '5.6.3'
  sha256 '10c51a6332aaa2ec25278dedf03835ca8fb6b83be4a1ac55629e829061d5eb2a'

  url "https://builds.insomnia.rest/downloads/mac/#{version}"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: '9f5555aaef44955235d2df04a90714fa54a0bdcaeb6f51e5ae4da1c2b3df493a'
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
