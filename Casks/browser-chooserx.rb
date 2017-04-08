cask 'browser-chooserx' do
  version '1.3.0'
  sha256 'b29dd4bc246163345e7f4fb76557ccfa3eed91cceac5758ae1455a7a87e2cefe'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '02e3700015a76c64b69e5343f0cde0164896906ad8d61289995a5a9b070dec52'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
