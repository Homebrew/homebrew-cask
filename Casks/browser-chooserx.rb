cask 'browser-chooserx' do
  version '1.2.8'
  sha256 '1f63bb12099971af196fe7c718f424e833bf9a6911a10c19a3ceec160f07d811'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '5da2717c910eadee567e9a65800c76af238ec44734bb269fefba7ca38294ef91'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
