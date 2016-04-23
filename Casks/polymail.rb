cask 'polymail' do
  version '0.80'
  sha256 '1b48297f6c5a30c8e2752ad9f20335ac5a2d2e4767957dc7d5fa72eba660b276'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '98ba153947e831363e87d1218f700c3f935eb1992866a03d067065a6b5110892'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
