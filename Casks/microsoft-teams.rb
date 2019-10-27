cask 'microsoft-teams' do
  version '1.2.00.28258'
  sha256 '9e750d87c7f9fde3ce85a25a6cece17b60895a27b185a3d0d3e4a95ee7cd2666'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil:   'com.microsoft.teams',
            launchctl: 'com.microsoft.teams.TeamsUpdaterDaemon'
end
