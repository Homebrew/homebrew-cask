cask 'quickbooks-online' do
  version '4.1.3-70'
  sha256 '4497731b8af58fc34d5e8d368075ef6d41728c4d656f9bfa24f0833f5049f881'

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
