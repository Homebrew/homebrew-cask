cask 'browser-chooserx' do
  version '1.2.6'
  sha256 'c0a7f5e17bb3093c9be573d65133600dafc3ab30e04b016b7e39a4c236bdeae9'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '0ec97bcb8a3d22dda757171b8427b2c22d81349ecc434eed986b0688b13d9f0c'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
