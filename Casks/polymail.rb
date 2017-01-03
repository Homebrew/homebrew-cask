cask 'polymail' do
  version '1.20'
  sha256 '8b2f551129a144b18dfcbb7187aa783fa0f99b4677da94074971a50386080d9c'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.major_minor.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: 'dea41f423f4680efec1e3dd0fd0bdec8f33c171a63bdd0fec9af0c36ff08f177'
  name 'Polymail'
  homepage 'https://polymail.io/'

  auto_updates true

  app 'Polymail.app'
end
