cask 'browser-chooserx' do
  version '1.0.16'
  sha256 '9e14104b545a3d83d7f6cabe5bb762565618da6d6b0cdb90ddda8e902b9dcd99'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  name 'Browser ChooserX'
  homepage 'https://www.bdevapps.com'

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
