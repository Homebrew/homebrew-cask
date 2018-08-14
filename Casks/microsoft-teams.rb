cask 'microsoft-teams' do
  version '1.1.00.19253'
  sha256 'a0c2a8a6f78e0a4e6a4dd18c775ae496cc160f6734fae58fcb26c03239ae3ef8'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
