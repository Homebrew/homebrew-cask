cask 'microsoft-teams' do
  version '1.3.00.8663'
  sha256 '50f34a948fa0e1e71af89c126fc44380aa58f533389215beafa12fecf6357d95'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://teams.microsoft.com/downloads/DesktopUrl?env=production&plat=osx'
  name 'Microsoft Teams'
  homepage 'https://teams.microsoft.com/downloads'

  auto_updates true

  pkg 'Teams_osx.pkg'

  uninstall pkgutil:   'com.microsoft.teams',
            launchctl: 'com.microsoft.teams.TeamsUpdaterDaemon'

  zap trash: [
               '/Library/Logs/Microsoft/Teams',
               '/Library/Preferences/com.microsoft.teams.plist',
               '~/Library/Application Support/Microsoft/Teams',
               '~/Library/Application Support/com.microsoft.teams',
               '~/Library/Caches/com.microsoft.teams',
               '~/Library/Cookies/com.microsoft.teams.binarycookies',
               '~/Library/Logs/Microsoft Teams',
               '~/Library/Preferences/com.microsoft.teams.plist',
               '~/Library/Saved Application State/com.microsoft.teams.savedState',
             ]
end
