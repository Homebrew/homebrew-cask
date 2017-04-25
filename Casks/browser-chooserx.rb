cask 'browser-chooserx' do
  version '1.3.6'
  sha256 '0cecf4e72e345bd6cc8de96807897a28290624a4c904399be1a5e530fded2487'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '01a52d65b6e9c758ad6c1964cba23c4462d93ca7008c38fc20d3940dc7e2ac2c'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap delete: [
                '~/Library/Application Scripts/com.bdevapps.Browser-ChooserX.Open-with-Browser-ChooserX',
                '~/Library/Caches/com.bdevapps.Browser-ChooserX',
                '~/Library/Containers/com.bdevapps.Browser-ChooserX.Open-with-Browser-ChooserX',
                '~/Library/Cookies/com.bdevapps.Browser-ChooserX.binarycookies',
                '~/Library/Group Containers/group.com.bdevapps.BrowserChooserX',
                '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
                '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
              ]
end
