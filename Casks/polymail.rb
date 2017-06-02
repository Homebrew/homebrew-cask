cask 'polymail' do
  version '1.37'
  sha256 'f1c3955222f1430174cfecfa4d59ec48212a1aa87c5da069c9f626f35734ead3'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '51b845a01b7f351b0c2b21e47cc39a187ef26c4198fbfd247043dfed2b52595b'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
