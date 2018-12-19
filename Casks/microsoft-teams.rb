cask 'microsoft-teams' do
  version '1.1.00.31953'
  sha256 'f712708f306ff1aa0819fc3f53d5627d03233b3b4a8374a47b99d3728a5ebb35'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
