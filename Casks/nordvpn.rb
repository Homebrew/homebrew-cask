cask 'nordvpn' do
  if MacOS.version <= :yosemite
    version '3.3.10'
    sha256 'b5d1f687db32714a6aeb6b5b3046f5381e2e30528a1a58eacd3606b35bb09dfe'
    url "https://downloads.nordcdn.com/apps/macos/10.10/NordVPN-OpenVPN/#{version}/NordVPN.dmg"
  elsif MacOS.version <= :el_capitan
    version '3.3.10'
    sha256 'b5d1f687db32714a6aeb6b5b3046f5381e2e30528a1a58eacd3606b35bb09dfe'
    url "https://downloads.nordcdn.com/apps/macos/10.11/NordVPN-OpenVPN/#{version}/NordVPN.dmg"
  elsif MacOS.version <= :sierra
    version '3.3.10'
    sha256 'b5d1f687db32714a6aeb6b5b3046f5381e2e30528a1a58eacd3606b35bb09dfe'
    url "https://downloads.nordcdn.com/apps/macos/10.12/NordVPN-OpenVPN/#{version}/NordVPN.dmg"
  elsif MacOS.version <= :high_sierra
    version '3.3.10'
    sha256 'b5d1f687db32714a6aeb6b5b3046f5381e2e30528a1a58eacd3606b35bb09dfe'
    url "https://downloads.nordcdn.com/apps/macos/10.12/NordVPN-OpenVPN/#{version}/NordVPN.dmg"
  end

  appcast 'https://downloads.nordvpn.com/apps/osx/update.xml',
          checkpoint: '589e0827c0a95f54ba267fdd61bc61d7cde34068951828e151b8578415385955'
  name 'NordVPN'
  homepage 'https://nordvpn.com/'

  auto_updates true

  app 'NordVPN.app'

  uninstall quit:       'com.nordvpn.NordVPN',
            launchctl:  'com.nordvpn.NordVPN.Helper',
            delete:     '/Library/PrivilegedHelperTools/com.nordvpn.NordVPN.Helper',
            login_item: 'NordVPN'

  zap trash: [
               '~/Library/Application Support/com.nordvpn.NordVPN',
               '~/Library/Caches/com.nordvpn.NordVPN',
               '~/Library/Logs/NordVPN/',
               '~/Library/Preferences/com.nordvpn.NordVPN.plist',
               '~/Library/Saved Application State/com.nordvpn.NordVPN.savedState',
               '~/Library/Cookies/com.nordvpn.NordVPN.binarycookies',
             ]
end
