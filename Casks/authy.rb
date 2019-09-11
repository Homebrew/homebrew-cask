cask 'authy' do
  version '1.7.0'
  sha256 '299dbd31fe5ae65891b4fc04c3e87e41fc5fbdfb0b63b1c5fb33d60ace815fef'

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
