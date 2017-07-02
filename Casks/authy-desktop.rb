cask 'authy-desktop' do
  version '1.0.12'
  sha256 '3f500b84a876cadc3ff3b8cbdf1fc122ea25b557aebb812a54a0312c595ba6a8'

  # s3.amazonaws.com/authy-electron-repository-production was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/authy-electron-repository-production/stable/#{version}/darwin/x64/authy-installer.dmg"
  name 'Authy Desktop'
  homepage 'https://authy.com/'

  app 'Authy Desktop.app'

  zap delete: [
                '~/Library/Application Support/Authy Desktop',
                '~/Library/Caches/com.authy.authy-mac',
                '~/Library/Caches/com.authy.authy-mac.ShipIt',
                '~/Library/Cookies/com.authy.authy-mac.binarycookies',
                '~/Library/Preferences/com.authy.authy-mac.helper.plist',
                '~/Library/Preferences/com.authy.authy-mac.plist',
              ]
end
