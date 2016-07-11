cask 'polymail' do
  version '0.93'
  sha256 'bbe564c6bf1bba85a609eda557e336b9c97ca9051a7c6c8a81e3619cf8d2d0db'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '1548a373fb11748e6c02108ba5c925b874912fd9687cdfdb9c8789af0f51d151'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
