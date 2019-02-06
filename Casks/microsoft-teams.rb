cask 'microsoft-teams' do
  version '1.2.00.1761'
  sha256 '0f378f5bdb35605cddfc856f049da8e8a67057ba4b08782fad97f73471e3e18b'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil: 'com.microsoft.teams'
end
