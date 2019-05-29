cask 'quickbooks-online' do
  version 'latest'
  sha256 :no_check

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest/QuickBooks.dmg"
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
