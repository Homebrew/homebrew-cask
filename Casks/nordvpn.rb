cask 'nordvpn' do
  version '3.1.4'
  sha256 'fc97804a1b7fbc51fa73fa59cb17b7bb4246fed155aa4ad3216647827351d719'

  url 'https://nordvpn.com/api/osxapp/latest'
  appcast 'https://downloads.nordvpn.com/apps/osx/update.xml',
          checkpoint: '70c5c63a5fa409dafd86d7e6bae9df796fa7a9183833e233caf1b79b44618909'
  name 'NordVPN'
  homepage 'https://nordvpn.com/'

  auto_updates true

  app 'NordVPN.app'

  uninstall quit:       'com.nordvpn.NordVPN',
            launchctl:  'com.nordvpn.NordVPN.Helper',
            delete:     '/Library/PrivilegedHelperTools/com.nordvpn.NordVPN.Helper',
            login_item: 'NordVPN'

  zap delete: [
                '~/Library/Application Support/com.nordvpn.NordVPN',
                '~/Library/Caches/com.nordvpn.NordVPN',
                '~/Library/Logs/NordVPN/',
                '~/Library/Preferences/com.nordvpn.NordVPN.plist',
                '~/Library/Saved Application State/com.nordvpn.NordVPN.savedState',
                '~/Library/Cookies/com.nordvpn.NordVPN.binarycookies',
              ]
end
