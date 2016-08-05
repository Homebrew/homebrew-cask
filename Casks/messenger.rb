cask 'messenger' do
  version '0.1.8.1466363428-c3dc9b83f1dd0469'
  sha256 '84e8d4e5c5242ac3e277423a1ae54be6267d05c1eb47b79c77a6b5c0e548f7df'

  url "https://fbmacmessenger.rsms.me/dist/Messenger-#{version}.zip"
  appcast 'https://fbmacmessenger.rsms.me/changelog.xml',
          checkpoint: '6b72f621e9f00b9cc4786cb7084a727d31bd91d5d34cf0191170c4a2e2b9c622'
  name 'Messenger'
  homepage 'https://fbmacmessenger.rsms.me/'
  license :mit

  app 'Messenger.app'
end
