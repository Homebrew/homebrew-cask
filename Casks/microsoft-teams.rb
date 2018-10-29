cask 'microsoft-teams' do
  version '1.1.00.26352'
  sha256 '9ab0e656ebcbab18712152f0932ad8462dc9c270ea83cde5c4eba5ada658768c'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
