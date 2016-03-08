cask 'quickbooks' do
  version '2.4.2'
  sha256 '884aff0cbe93b11ca809196927ae6af340cfe4cbf5c5095be347e795495db703'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: 'd65910422ce81187363f5da516ecb7b9ad5b2df4b64252442c020e3c346f9e4d'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'
  license :gratis

  app 'QuickBooks.app'
end
