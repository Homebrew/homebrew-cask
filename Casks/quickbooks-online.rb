cask 'quickbooks-online' do
  version '4.0.8-34'
  sha256 '19b28bdf0a09b7d1dd19cbc0f27f3ceccb79a5f1c6fa775897e71e234df9d10a'

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
