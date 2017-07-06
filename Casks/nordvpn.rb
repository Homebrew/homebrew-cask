cask 'nordvpn' do
  version '3.1.5'
  sha256 '54cc1de9e07d41a487bd175645a70a625e2eefb59202821bbde4bc0a54c9700f'

  url 'https://nordvpn.com/api/osxapp/latest'
  appcast 'https://downloads.nordvpn.com/apps/osx/update.xml',
          checkpoint: '6c4384ac9a8b8c669849489f6fdbc3b0a664aa9e483e81aa9b78db3f3befe318'
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
