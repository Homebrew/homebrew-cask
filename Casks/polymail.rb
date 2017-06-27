cask 'polymail' do
  version '1.39'
  sha256 '89bc6f2a0245961ab205a27e52f032d90d0d165824a616ce947a8d4e615f5872'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'c7edbad342f80754f20fdf1b797fd50f301c530189db8f3eba2e26f36f0bc8f5'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
