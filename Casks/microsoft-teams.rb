cask 'microsoft-teams' do
  version '1.1.00.14353'
  sha256 'edbd96e266a14d52e810cbb2b41e41789394d3e5ee1bbdc1e848948efcb835e7'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
