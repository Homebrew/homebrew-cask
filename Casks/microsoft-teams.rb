cask 'microsoft-teams' do
  version '1.3.00.15561'
  sha256 '3d4421b62f8bd8d77a2921236d23443bce4cdd01d097d8b047b50e031d84854f'

  url "https://statics.teams.microsoft.com/production-osx/#{version}/Teams_osx.pkg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://aka.ms/teamsmac'
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
