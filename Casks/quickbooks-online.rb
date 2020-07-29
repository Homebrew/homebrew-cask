cask 'quickbooks-online' do
  version '4.2.0-78'
  sha256 '2cc77e99205c1d65ffe4d4ef7701c6b459b41db8b87800919534cea168e0815b'

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
