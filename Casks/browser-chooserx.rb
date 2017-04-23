cask 'browser-chooserx' do
  version '1.3.5'
  sha256 '681f04c397abeab090bf2d00f626a8fca1c88ba70b5896e72b7a0cbf4dfbb621'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '87c94dff51987453b566647b19cb38f57e855e5842dd8b86848eba9f55ef1cf1'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
