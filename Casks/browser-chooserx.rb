cask 'browser-chooserx' do
  version '1.2.7'
  sha256 'a0d493968e2e31aa7d170643aeea4d5393c527f472d38071c65a4c223bb4492c'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'ad8aa8420c32a0bbe2747081931538e84af3d062d41feb74f59acfcf1bdf6143'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
