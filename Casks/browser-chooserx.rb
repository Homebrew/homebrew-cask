cask 'browser-chooserx' do
  version '1.3.7'
  sha256 '439b8d137bed44de3a052c6dfce4fa38818f05108f6370d3ebc76b1492cb24dc'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '555b74bd4f0f4b014f9063250f12f598ca26eb71c38b039092b6d93914a8ee1f'
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
