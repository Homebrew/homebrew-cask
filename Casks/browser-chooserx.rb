cask 'browser-chooserx' do
  version '1.4.1'
  sha256 '816e16381055883dc684a39894937ed5477f7a060dbd9b17fe552f9cd65266d4'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'c2348984d6d79b0fafdb2dc0966ec687be1240584adc03aeabaa95d751d3bf4a'
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
