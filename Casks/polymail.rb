cask 'polymail' do
  version '0.84'
  sha256 'bbf6ba18d21f7e1d5643c077f6ef7980c2e55ebbb3d2c06664bf1b9071f5a3bf'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'e0b4fa24b2aa737a556ba8daf1c2f80de46530727fc96e16e1b9619e32c861fe'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
