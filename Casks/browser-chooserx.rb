cask 'browser-chooserx' do
  version '1.2.4'
  sha256 '5f1daa688e588a5b8502b28fc4afa0ff6cf385643728f02143792e45fa29b887'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '19bd333fdce043281c28b7fe6b84f241cb35a7d095688491f4d5e05e606f76fa'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
