cask 'nordvpn' do
  version '3.2.0'
  sha256 '2b588d73fbd73331b3049564f8fdd33f1ff735fb6bc48536633d452eac068f66'

  url 'https://nordvpn.com/api/osxapp/latest'
  appcast 'https://downloads.nordvpn.com/apps/osx/update.xml',
          checkpoint: 'e25bfa25342846e846f42f10b60d7a5923175d6580fd33e93feed626a18f78b1'
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
