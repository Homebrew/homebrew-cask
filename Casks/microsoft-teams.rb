cask 'microsoft-teams' do
  version '1.1.00.25655'
  sha256 '01d0de8575ab8eb8a65f7c39183b81174d6eb68b859ae5717780b9ec17ace587'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
