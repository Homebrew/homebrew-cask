cask 'nordvpn' do
  version '3.2.2'
  sha256 '25c032d7ee9e02ec9b82b7f1f9176ccbf1a775af90605f12d9d3f9fb52274246'

  url 'https://nordvpn.com/api/osxapp/latest'
  appcast 'https://downloads.nordvpn.com/apps/osx/update.xml',
          checkpoint: 'a7ce9e2e3e147eff502499ffd0668ad413ae8d0b628fe62395bccdb40d119549'
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
