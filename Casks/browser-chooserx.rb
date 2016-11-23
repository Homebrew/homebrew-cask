cask 'browser-chooserx' do
  version '1.1'
  sha256 '226d82f81c61f13af0dda9809172a629587632cf77bca18889f95e658b1ebe60'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'cee64db6ef68bc2efb79a2ca91047eaa429800086f9797057ee86e6463c137b5'
  name 'Browser ChooserX'
  homepage 'https://www.bdevapps.com'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
