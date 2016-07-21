cask 'polymail' do
  version '1.01'
  sha256 '4bee30bf9a665d5c89abb4d0150038d5defec8b2925bf121bd57bcfc8e7edf6d'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '6a315a7ccad6324bfe31498f7d0afbc5733e29896b62f1a4529fd19515b78239'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
