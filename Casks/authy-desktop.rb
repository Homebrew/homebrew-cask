cask 'authy-desktop' do
  version '1.0.13'
  sha256 '7e0939f473f4a8169d5c41f15ef8de9da08988245474536401216b6614a08bae'

  # s3.amazonaws.com/authy-electron-repository-production was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/authy-electron-repository-production/stable/#{version}/darwin/x64/authy-installer.dmg"
  name 'Authy Desktop'
  homepage 'https://authy.com/'

  auto_updates true

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
