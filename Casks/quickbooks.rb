cask 'quickbooks' do
  version '2.4.5'
  sha256 'c7a3ea7f25f951b98522cef7cf7cbf4e3bc61ac50d9c184ce99df0c41e13084e'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: 'e8a45739e50ab2342048a23873b9981a56088bdd1bdb74474ba0077270757f30'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
