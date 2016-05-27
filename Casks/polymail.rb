cask 'polymail' do
  version '0.86'
  sha256 '3cfcc7e49cfc0b33399e7faa6c343a04a5ea7d3dd910f59abc07f4e4179e609e'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'f5f30334d6c7defa12508f3ce190ebe4ff5695a64c3a2dfd6820dd9c759de0d2'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
