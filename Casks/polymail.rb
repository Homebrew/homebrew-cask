cask 'polymail' do
  version '0.77'
  sha256 '19727725b78137ddbc8d44746baaf22e98d0153e5feb96862ec35003b634af0c'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'f88614b715199b7a7dc9329e7ee0226b4a4fa4fc225368f0636796c7862cd41a'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
