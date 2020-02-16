cask 'quickbooks-online' do
  version '4.1.1-67'
  sha256 '52f23d913b609971fea6947ac4a6cf1cc50ec73f8a99555abc427390694260b4'

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
