cask 'messenger' do
  version '0.1.13.1491443794-7b1777b58fef0bf9'
  sha256 '6b6f9888c9bf4e7d8fb2db547331cea7e9df99b85f914322af12a476c47bc984'

  url "https://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  appcast 'https://fbmacmessenger.rsms.me/changelog.xml',
          checkpoint: 'f5416a0a5a7e7bb590ea7e6834a63edd2b76f352b1afb25ef9c52b7159ae0f96'
  name 'Messenger'
  homepage 'https://fbmacmessenger.rsms.me/'

  app 'Messenger.app'

  zap delete: [
                '~/Library/Caches/me.rsms.fbmessenger',
                '~/Library/Cookies/me.rsms.fbmessenger.binarycookies',
                '~/Library/Preferences/me.rsms.fbmessenger.plist',
              ]
end
