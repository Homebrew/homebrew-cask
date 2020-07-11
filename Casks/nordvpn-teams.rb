cask 'nordvpn-teams' do
  version '1.4.1'
  sha256 'ed25d9da5e34aed726599413b1c87360994040ba74f20ea7d29383ed6b801d45'

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
