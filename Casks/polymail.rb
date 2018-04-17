cask 'polymail' do
  version '1.48'
  sha256 '41667e8353e9dd56d1f7f589e33017d7652f6e9beb192702e087eda354fb4efc'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'ce6ef019f1ac45a8c284a5caae90acf792812de33bc184f4aee3912d19627a4c'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
