cask 'nordvpn' do
  version '5.6.0'
  sha256 'ad5fe01c4cfa11a147b86b6b2d0b218037ed1831367936c976541e4d8a3e5141'

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
