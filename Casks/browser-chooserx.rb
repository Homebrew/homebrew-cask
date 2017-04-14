cask 'browser-chooserx' do
  version '1.3.1'
  sha256 'e75b1c49ed79c5e10887b076d99c371fa45350bee6c9c81e8ecfd3bfccc7fa1f'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'b5524e0d8bce8f7943d58dec86feecc9bb2134da5e3f675a43a363f09b9dc66a'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
