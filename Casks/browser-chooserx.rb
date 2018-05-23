cask 'browser-chooserx' do
  version '1.4.2'
  sha256 '94086afa8f3a6fde82b6f8a1f1af757df72510349993ec8fb7bd4b8b92bf3b28'

  url 'https://www.bdevapps.com/files/downloads/Browser%20ChooserX.zip'
  appcast "https://www.bdevapps.com/files/downloads/BrowserChooserXAppCast#{version.major}.xml",
          checkpoint: '5646a3e99849ac88ca08b837d4958ffed2e17d2824d2cdeef210e3f2a67048c8'
  name 'Browser ChooserX'
  homepage 'https://bdevapps.com/'

  auto_updates true

  app 'Browser ChooserX.app'

  zap trash: [
               '~/Library/Application Scripts/com.bdevapps.Browser-ChooserX.Open-with-Browser-ChooserX',
               '~/Library/Caches/com.bdevapps.Browser-ChooserX',
               '~/Library/Containers/com.bdevapps.Browser-ChooserX.Open-with-Browser-ChooserX',
               '~/Library/Cookies/com.bdevapps.Browser-ChooserX.binarycookies',
               '~/Library/Group Containers/group.com.bdevapps.BrowserChooserX',
               '~/Library/Preferences/com.bdevapps.Browser-ChooserX.plist',
               '~/Library/Saved Application State/com.bdevapps.Browser-ChooserX.savedState',
             ]
end
