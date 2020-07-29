cask 'nordvpn' do
  version '5.5.7'
  sha256 'd0e47883f78f171dcf9a6f6e7460f940598f5b265d191c1a83750c9ae4a49da2'

  # downloads.nordcdn.com/ was verified as official when first introduced to the cask
  url 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/NordVPN.pkg'
  appcast 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml'
  name 'NordVPN'
  homepage 'https://nordvpn.com/'

  auto_updates true

  pkg 'NordVPN.pkg'

  uninstall quit:       'com.nordvpn.NordVPN',
            launchctl:  [
                          'com.nordvpn.osx.helper',
                          'com.nordvpn.NordVPN.Helper',
                        ],
            delete:     '/Library/PrivilegedHelperTools/com.nordvpn.NordVPN.Helper',
            login_item: 'NordVPN',
            pkgutil:    'com.nordvpn.osx'

  zap trash: [
               '~/Library/Application Support/com.nordvpn.NordVPN',
               '~/Library/Caches/com.nordvpn.NordVPN',
               '~/Library/Logs/NordVPN/',
               '~/Library/Preferences/com.nordvpn.NordVPN.plist',
               '~/Library/Saved Application State/com.nordvpn.NordVPN.savedState',
               '~/Library/Cookies/com.nordvpn.NordVPN.binarycookies',
             ]
end
