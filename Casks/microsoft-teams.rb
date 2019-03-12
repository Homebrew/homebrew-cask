cask 'microsoft-teams' do
  version '1.2.00.3961'
  sha256 '2678df584de381fb2d4d19160813146dce1f9baef241f0f737f8b9cd0e682901'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
