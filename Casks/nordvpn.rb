cask 'nordvpn' do
  version '4.5.4'
  sha256 '8ad4601d8b721302f978ba25e3e3a6addf8fac156c47c2eb5c5359a11c18bb46'

  # downloads.nordcdn.com/apps was verified as official when first introduced to the cask
  url 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/NordVPN.zip'
  appcast 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml',
          checkpoint: 'd352584539c750f0b7ffbab2cbbfe6bd51f908e37719ae444cb6a517463d7ac5'
  name 'NordVPN'
  homepage 'https://nordvpn.com/'

  auto_updates true

  pkg "Release_#{version}/NordVPN.sparkle_guided.pkg"

  uninstall quit:       'com.nordvpn.NordVPN',
            launchctl:  'com.nordvpn.NordVPN.Helper',
            delete:     '/Library/PrivilegedHelperTools/com.nordvpn.NordVPN.Helper',
            login_item: 'NordVPN',
            pkgutil:    'com.nordvpn.NordVPN'

  zap trash: [
               '~/Library/Application Support/com.nordvpn.NordVPN',
               '~/Library/Caches/com.nordvpn.NordVPN',
               '~/Library/Logs/NordVPN/',
               '~/Library/Preferences/com.nordvpn.NordVPN.plist',
               '~/Library/Saved Application State/com.nordvpn.NordVPN.savedState',
               '~/Library/Cookies/com.nordvpn.NordVPN.binarycookies',
             ]
end
