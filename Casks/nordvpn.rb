cask 'nordvpn' do
  version '4.5.6'
  sha256 'cb2a860424701d71532f8aadf8669911f6c228a0d33ac7cd06e5a55bfd90dac5'

  # downloads.nordcdn.com/apps was verified as official when first introduced to the cask
  url 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/NordVPN.zip'
  appcast 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml',
          checkpoint: 'd352584539c750f0b7ffbab2cbbfe6bd51f908e37719ae444cb6a517463d7ac5'
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
