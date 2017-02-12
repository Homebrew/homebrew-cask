cask 'messenger' do
  version '0.1.11.1484623553-420db4a3b3b64255'
  sha256 'a580e5377e156915c7bb69673615b70ddcf4704fd87c0206fb1353941cbe87a0'

  url "https://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  appcast 'https://fbmacmessenger.rsms.me/changelog.xml',
          checkpoint: 'f3894e5800cd1dc4a1ca80083a60ef41f0d92a85fcbf8b01d7e50f5f31d48448'
  name 'Messenger'
  homepage 'https://fbmacmessenger.rsms.me/'

  app 'Messenger.app'

  zap delete: [
                '~/Library/Caches/me.rsms.fbmessenger',
                '~/Library/Cookies/me.rsms.fbmessenger.binarycookies',
                '~/Library/Preferences/me.rsms.fbmessenger.plist',
              ]
end
