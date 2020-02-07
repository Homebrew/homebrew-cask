cask 'quickbooks-online' do
  version '4.1.0-64'
  sha256 '6c74ce750e577727db4a102df51aaef2976e0bf2d082fe63868c82d8b010686d'

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
