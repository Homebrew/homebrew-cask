cask 'quickbooks-online' do
  version '2.4.8'
  sha256 '6e5b9b18f662efeddc3099f921f68156fefe4c58770297b034ed09863174578a'

  url "https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/releases/QuickBooks_#{version}/QuickBooks.QBOWeb.dmg"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/apple_web/sample/static/qbomac/rssfeeds/Staged/QuickBooks.QBOWeb.Release.xml',
          checkpoint: 'ef2491087ae0fb6064dc81368717486154e036836011081844407078a46337b7'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
