cask "quickbooks-online" do
  version "4.2.1-79"
  sha256 "3d1f59f580e60c594eefc28d27acf82987171bcd212a0b8804371699da08216b"

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml"
  name "QuickBooks"
  homepage "https://qbo.intuit.com/"

  app "QuickBooks.app"
end
