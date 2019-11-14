cask 'nordvpn' do
  version '5.1.4'
  sha256 'ea01b3f5445e0a3de9d7fc7a677dea4b4c74c70a4ee6ad304eb1456e2053fd38'

  # downloads.nordcdn.com/apps was verified as official when first introduced to the cask
  url "https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/#{version}/NordVPN.pkg"
  appcast 'https://downloads.nordcdn.com/apps/macos/generic/NordVPN-OpenVPN/latest/update_pkg.xml'
  name 'NordVPN'
  homepage 'https://nordvpn.com/'

  auto_updates true

  pkg 'NordVPN.pkg'

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
