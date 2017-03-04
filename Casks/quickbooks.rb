cask 'quickbooks' do
  version '2.4.7'
  sha256 '5192f1b0a24568276779e967ce3380ccb79db766898e37cf2168eead3b849f92'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: '5c3935f399bf9b18c4e0add6d6e079673e47f1238e3ee72e9cc4e64caed77336'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
