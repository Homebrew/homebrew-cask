cask 'quickbooks' do
  version '2.4.7'
  sha256 '5192f1b0a24568276779e967ce3380ccb79db766898e37cf2168eead3b849f92'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: '1c063a09661bcc648964234d024ed6ff9985668f3760ab384dec65fad6a4a52c'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
