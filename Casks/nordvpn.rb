cask 'nordvpn' do
  version '5.6.1'
  sha256 '53cbb6a62f82d436aee3c425d1f34951af0f2ed46acefb2c8e2928ed965746e0'

  # downloads.nordcdn.com/ was verified as official when first introduced to the cask
  url 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/NordVPN.pkg'
  appcast 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml'
  name 'NordVPN'
  homepage 'https://nordvpn.com/'

  auto_updates true

  pkg 'NordVPN.pkg'

  uninstall quit:       [
                          'com.nordvpn.osx',
                          'com.nordvpn.osx.NordVPNLauncher',
                        ],
            launchctl:  [
                          'com.nordvpn.osx.helper',
                          'com.nordvpn.NordVPN.Helper',
                        ],
            delete:     [
                          '/Library/PrivilegedHelperTools/com.nordvpn.osx.helper',
                          '/Library/PrivilegedHelperTools/com.nordvpn.osx.ovpnDnsManager',
                        ],
            login_item: 'NordVPN',
            pkgutil:    'com.nordvpn.osx'

  zap trash: [
               '~/Library/Application Support/com.nordvpn.osx',
               '~/Library/Caches/com.nordvpn.osx',
               '~/Library/Logs/NordVPN/',
               '~/Library/Preferences/com.nordvpn.osx.plist',
               '~/Library/Saved Application State/com.nordvpn.osx.savedState',
               '~/Library/Cookies/com.nordvpn.osx.binarycookies',
             ]
end
