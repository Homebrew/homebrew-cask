cask 'microsoft-teams' do
  version '1.1.00.16251'
  sha256 '059779e1fe397ccbb69c960b896017c59215c74a02b9237d0598cd90cca60272'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.dmg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  app 'Microsoft Teams.app'
end
