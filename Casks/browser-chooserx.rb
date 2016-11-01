cask 'browser-chooserx' do
  version '1.0.16'
  sha256 '9e14104b545a3d83d7f6cabe5bb762565618da6d6b0cdb90ddda8e902b9dcd99'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '7f09f052c116ba0f351c14c115fabf494f5fd49848a8380c14710211dd1468fb'
  name 'Browser ChooserX'
  homepage 'https://www.bdevapps.com'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
