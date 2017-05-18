cask 'browser-chooserx' do
  version '1.4.0'
  sha256 'dd6750dd7b34eff7ffe74ae9925031912ad9c0fa8a8147d194fbde49b5187cfd'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: 'e6b138967b245b69a58bddbef18ae853eb8be156debf10e47c3013c2c36f23d5'
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
