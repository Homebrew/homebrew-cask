cask 'quickbooks-online' do
  version '4.0.7-217'
  sha256 '32df37d609ca7c30ea643ec29bb640c884d97df059040a2a70c122dfa30a0252'

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast 'https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml'
  name 'QuickBooks'
  homepage 'https://qbo.intuit.com/'

  app 'QuickBooks.app'
end
