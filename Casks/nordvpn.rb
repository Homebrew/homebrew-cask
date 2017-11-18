cask 'nordvpn' do
  version '3.3.8'
  sha256 'e274d18c42f7f3397bf195f027a51b21f1add2b7b57578a46498888d41104713'

  url 'https://nordvpn.com/api/osxapp/latest'
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
