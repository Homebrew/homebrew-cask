cask 'quickbooks-online' do
  version '4.1.4-71'
  sha256 'ec8f0dc11ef35c3d1589980c30b8eb7b33a52c4216ffaa15ab221a3d34da44c8'

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
