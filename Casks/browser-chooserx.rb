cask 'browser-chooserx' do
  version '1.2.5'
  sha256 'ceb0d92493a42264d6fff765b49b45eaa1ddb2cafb169c552b619605ccd32c68'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '59db5bb7da1a5b614925fb5521ec61f50258ce87996d1b22ca1f22f68c08bb50'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
