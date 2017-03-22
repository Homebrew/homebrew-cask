cask 'polymail' do
  version '1.26'
  sha256 'c95fefaf4cf3d76e627074dabf0dee2a8c8c42706a1716caead434729018934c'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '46aed69be030447451264ec7b4ee0e284f7933bb629ade7e495d38be0e6b55de'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
