cask 'browser-chooserx' do
  version '1.2'
  sha256 '67165698a387fe6cf897fb70fdcf73deada3882fa15736355f334aa6c7634776'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'a2ab0bf740a52c43b7e2de8fba53c1f88ab6efcfcc3b7a157b3d71b3027fcdb7'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
