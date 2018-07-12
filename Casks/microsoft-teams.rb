cask 'microsoft-teams' do
  version '1.1.00.17852'
  sha256 'e912b98684c76ca42c8951b14c957eac2aad0e266976baa4f251cce36005e755'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
