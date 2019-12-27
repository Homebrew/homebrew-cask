cask 'authy' do
  version '1.7.2'
  sha256 'a4a5f33067786917d45a2bdba3bb095b28e3c4df1b944041551f7b0ba1e1a23f'

  # authy-electron-repository-production.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://authy-electron-repository-production.s3.amazonaws.com/authy/stable/#{version}/darwin/x64/Authy%20Desktop-#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://electron.authy.com/download%3Fchannel=stable%26arch=x64%26platform=darwin%26version=latest%26product=authy'
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
