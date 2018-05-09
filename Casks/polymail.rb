cask 'polymail' do
  version '1.50'
  sha256 '33c6be12f1e49bebf547a68d0774b6342e182aa4cbbaa267179eb5d1da984a88'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'd3d779182dc6ddfd58a2efeaef48c304242bb35860a10ea826a57b8a9eeb602c'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
