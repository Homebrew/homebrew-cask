cask 'nordvpn-teams' do
  version '1.4.0'
  sha256 '5c549a6bc5f930f13471284a4ef20d7676bb43bf551d72e5e3873e4e588c2cd8'

  # downloads.nordteams.com/ was verified as official when first introduced to the cask
  url 'https://downloads.nordteams.com/mac/latest/NordVPNTeams.pkg'
  appcast 'https://downloads.nordteams.com/mac/update.xml'
  name 'NordVPN Teams'
  homepage 'https://nordvpnteams.com/'

  auto_updates true

  pkg 'NordVPNTeams.pkg'

  uninstall quit:      'com.nordvpn.macos.teams.NordVPNTeamsLauncher',
            launchctl: 'com.nordvpn.macos.teams.21696',
            delete:    '/Library/PrivilegedHelperTools/com.nordvpn.osx.helper',
            pkgutil:   'com.nordvpn.macos.teams'

  zap trash: [
               '~/Library/Application Support/com.nordvpn.macos.teams',
               '~/Library/Caches/com.nordvpn.macos.teams',
               '~/Library/Preferences/com.nordvpn.macos.teams.plist',
             ]
end
