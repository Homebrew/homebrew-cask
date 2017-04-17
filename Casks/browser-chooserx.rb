cask 'browser-chooserx' do
  version '1.3.3'
  sha256 '69d71add57e6bc11376c1111dbba66eb7a3ac1bdff0723e6c8dea1c6969a797b'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'b75d8204a23f9a48a4f833229e3291b05b7b395e45994a9696b23b087618ec2c'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
