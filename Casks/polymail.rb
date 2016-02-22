cask 'polymail' do
  version '0.73'
  sha256 '4e9a9f23d9ecaed00c42dd59203c81cc8e54c374dde6c159499583d313c1a45f'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '692e9622a927f99ff644665ac2292f2106451ae37742f3f720252560498a6ae8'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
