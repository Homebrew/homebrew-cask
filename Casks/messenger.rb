cask 'messenger' do
  version '0.1.10.1479230589-6c4e6bd63b9f663c'
  sha256 'e6804a588ba088004f6e72e0e86d96703eb0a73f8671ab3f69dd1468b66b662d'

  url "https://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  appcast 'https://fbmacmessenger.rsms.me/changelog.xml',
          checkpoint: 'c8b6bc8f35f7a03534521c408cae82dd9aeb10a92a690b4f6079ac652bdbb298'
  name 'Messenger'
  homepage 'https://fbmacmessenger.rsms.me/'

  app 'Messenger.app'

  zap delete: [
                '~/Library/Caches/me.rsms.fbmessenger',
                '~/Library/Cookies/me.rsms.fbmessenger.binarycookies',
                '~/Library/Preferences/me.rsms.fbmessenger.plist',
              ]
end
