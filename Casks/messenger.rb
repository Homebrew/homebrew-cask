cask 'messenger' do
  version '0.1.12.1487384288-5622ec8fa60c38a1'
  sha256 '9f560c0caf5c37d0bf3ba33b003b8da61f8d8d3bc775be36ba540bbdbac9c93d'

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
