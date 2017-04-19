cask 'polymail' do
  version '1.34'
  sha256 '1ee8aa7c33a3e467ab8df961d2e1c77e139a2864569d802e7f0db20e39cc7fdf'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '8fe8a7e20206b348b4c68c4dd38505cd084a660be4b3d1edbaa2b6ccf6b7e2c9'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
