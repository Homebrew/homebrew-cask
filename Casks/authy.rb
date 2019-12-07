cask 'authy' do
  version '1.7.1'
  sha256 'd25c9a412b80f876d43b33356d9c381168d563682c5e1292a1faba26bf582cb8'

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
