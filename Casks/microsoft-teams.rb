cask 'microsoft-teams' do
  version '1.1.00.8752'
  sha256 '537e0030d0e93c91daf449d6913bdbf2b833f07e9375ea3fe0ddbd153643020d'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: 'd048d6663c4deb572a128f551acec1826637eda1277b0e63720a15e7542d2b88'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
