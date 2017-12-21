cask 'authy' do
  version '1.2.0'
  sha256 '8da3e29dd5a2e61f5d8acf396425e359264514c66464c98a848caa9ecb8e5f7d'

  # s3.amazonaws.com/authy-electron-repository-production was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/authy-electron-repository-production/authy/stable/#{version}/darwin/x64/authy-installer.dmg"
  name 'Authy Desktop'
  homepage 'https://authy.com/'

  auto_updates true

  app 'Authy Desktop.app'

  zap trash: [
               '~/Library/Application Support/Authy Desktop',
               '~/Library/Caches/com.authy.authy-mac',
               '~/Library/Caches/com.authy.authy-mac.ShipIt',
               '~/Library/Cookies/com.authy.authy-mac.binarycookies',
               '~/Library/Preferences/com.authy.authy-mac.helper.plist',
               '~/Library/Preferences/com.authy.authy-mac.plist',
             ]
end
