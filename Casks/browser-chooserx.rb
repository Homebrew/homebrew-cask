cask 'browser-chooserx' do
  version '1.2.3'
  sha256 'c49da64421eafbfedd085fbfaa549543464ef7d9efa7de46dfcce56a798337ea'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'b92dca2de8932df0e03ee844f26625251d8d76e0e589b3c706bded53e2dc63e9'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
