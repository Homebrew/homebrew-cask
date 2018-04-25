cask 'polymail' do
  version '1.49'
  sha256 'b5825f19af333f6447d2dec0f33ec9c1230bfb7a314b6b4252d827a2c89587f8'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'd9b71e57b293f0ae1480f813e63abf11b97ec74f26637e8997f91b79434b20f2'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
