cask 'polymail' do
  version '1.19'
  sha256 'd5657afc93c3522c1fde0129605128c981cf78bd4012fc6f9a9181b27f934e7d'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '05c514738478f81c83b979afa8c0557a6379ec36dca960070968c570c4013260'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
