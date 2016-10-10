cask 'messenger' do
  version '0.1.9.1471449462-ee2d21f7e322294f'
  sha256 '1a4b49b860b9ae14c6f6b3e0190484b0572299f40f95f798d330838e4c9c17f4'

  url "https://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  appcast 'https://fbmacmessenger.rsms.me/changelog.xml',
          checkpoint: '0e38e45168998342254958575d9127c2a1509f2290d1c7c8efc9e534d0ffb968'
  name 'Messenger'
  homepage 'https://fbmacmessenger.rsms.me/'

  app 'Messenger.app'

  zap delete: [
                '~/Library/Caches/me.rsms.fbmessenger',
                '~/Library/Cookies/me.rsms.fbmessenger.binarycookies',
                '~/Library/Preferences/me.rsms.fbmessenger.plist',
              ]
end
