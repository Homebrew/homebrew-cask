cask 'polymail' do
  version '1.36'
  sha256 '439b0053ce3fbc9862ca80fe9e2b39ee79acfc89e84f0f0b0d47ed22ec8d9852'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'c6c55d0b5e71f67e44c562e7a91efbaffd353d2af7d806ca1ca67d6c72ba8226'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
