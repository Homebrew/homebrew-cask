cask 'nordvpn' do
  version '4.8.7'
  sha256 'cc622609c2a1337be88a7ee68120bd1476e16a50a1cc7a58bfb570eda3782bef'

  # downloads.nordcdn.com/apps was verified as official when first introduced to the cask
  url 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/NordVPN.zip'
  appcast 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml'
  name 'NordVPN'
  homepage 'https://nordvpn.com/'

  auto_updates true

  pkg 'exports/NordVPN_OVPN.pkg'

  uninstall quit:       'com.nordvpn.NordVPN',
            launchctl:  'com.nordvpn.NordVPN.Helper',
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
