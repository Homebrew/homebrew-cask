cask 'polymail' do
  version '0.83'
  sha256 'f47b92ae690be373e72b81cd215ee930698bbb7a91f6b6cb1bbeeaab7ab21655'

  url "https://sparkle-updater.polymail.io/osx/builds/Polymail-v#{version.no_dots}.zip"
  appcast 'https://sparkle-updater.polymail.io/cast.xml',
          checkpoint: '7c3ce83e96af9a9712b37dbc410a74e2621ce092e374b7f3fabd4b203decd495'
  name 'Polymail'
  homepage 'https://polymail.io/'
  license :closed

  auto_updates true

  app 'Polymail.app'
end
