cask 'browser-chooserx' do
  version '1.3.8'
  sha256 'a4fba428fea4071c8ae2461e99e95dbf7ec6ed4cb815cfc712adc532d73caf5b'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'f7343e7855c687933dd4da8cb0236bafaa634dc24f89c05910ea2c1a8987dc80'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Application Scripts/com.bdevapps.Browser-ChooserX.Open-with-Browser-ChooserX',
                '~/Library/Caches/com.bdevapps.Browser-ChooserX',
                '~/Library/Containers/com.bdevapps.Browser-ChooserX.Open-with-Browser-ChooserX',
                '~/Library/Cookies/com.bdevapps.Browser-ChooserX.binarycookies',
                '~/Library/Group Containers/group.com.bdevapps.BrowserChooserX',
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
