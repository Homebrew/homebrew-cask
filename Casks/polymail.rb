cask 'polymail' do
  version '0.76'
  sha256 'd02d70700c4bc56d983505c1f69b32f0329cfe0a4c357d37170ffb912331af8a'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '35ea7eeaa1ce7a2f8e109b2cfbf53f83ceb28277625d7cfb2c1c191269453b81'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
