cask 'polymail' do
  version '1.15'
  sha256 '46193782f1d39ec28f293b85d8e2a5dcd1a9a8fb753448d1c9bc680244831796'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '5c8929df7345145523b5f158caa1d683705027f33e0c915af39cf99385b82808'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
