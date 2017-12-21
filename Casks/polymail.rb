cask 'polymail' do
  version '1.47'
  sha256 'a9854e47e904514db4f0794fbf50e45ad0976e32c2bdf756cbe4bc26a9f7cc90'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '0187ecdaeb94b5b7e0294b01e9add4e71f67ecb2e6bb2e473301032c855b4a10'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
