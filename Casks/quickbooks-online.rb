cask 'quickbooks-online' do
  version '4.0.9-35'
  sha256 '8254f705f126aafc51a2de9953481c4bcbc504377f8a25eface350200592e305'

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
