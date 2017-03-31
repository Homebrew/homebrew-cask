cask 'messenger' do
  version '0.1.5.1442536116-8f43a2f9c4d47b7b'
  sha256 'b26068e8a9950e8e60edaacdb54d2faf4be314afa24f5dead6e6101eb7dbb420'

  url "https://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  appcast 'https://fbmacmessenger.rsms.me/changelog.xml',
          checkpoint: 'a24b49ad17fb829db8af911559628b1791593f41ab9dde7549c2400bb333c895'
  name 'Messenger'
  homepage 'https://fbmacmessenger.rsms.me/'

  app 'Messenger.app'

  zap delete: [
                '~/Library/Caches/me.rsms.fbmessenger',
                '~/Library/Cookies/me.rsms.fbmessenger.binarycookies',
                '~/Library/Preferences/me.rsms.fbmessenger.plist',
              ]
end
