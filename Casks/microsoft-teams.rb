cask 'microsoft-teams' do
  version '1.1.00.25455'
  sha256 'ef3eedb53d2fdfc989c76e799e5b25657434a3fd676a5e1c36bb58d8f9bddb62'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
