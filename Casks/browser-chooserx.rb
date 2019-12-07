cask 'browser-chooserx' do
  version '1.4.3'
  sha256 '0615573b0be0bdf4e1b596475faa33d410e9df9a081501773366bab9a3e06aeb'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml"
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap trash: [
               '~/Library/Application Scripts/com.bdevapps.Browser-ChooserX.Open-with-Browser-ChooserX',
               '~/Library/Caches/com.bdevapps.Browser-ChooserX',
               '~/Library/Containers/com.bdevapps.Browser-ChooserX.Open-with-Browser-ChooserX',
               '~/Library/Cookies/com.bdevapps.Browser-ChooserX.binarycookies',
               '~/Library/Group Containers/group.com.bdevapps.BrowserChooserX',
               '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
               '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
             ]
end
