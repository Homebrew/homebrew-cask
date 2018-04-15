cask 'microsoft-teams' do
  version '1.1.00.8752'
  sha256 'dbf81c920b9b6cdec26f3060c5045997f05b1ddd7f65411480a54671729a5bda'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx',
          checkpoint: 'd048d6663c4deb572a128f551acec1826637eda1277b0e63720a15e7542d2b88'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
