cask "quickbooks-online" do
  version "4.3.0-82"
  sha256 "900d2bbcfd7eedae916562f6fad65d851c9e40b3fdd20d046c8e151c2d60df54"

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  appcast "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml"
  name "QuickBooks"
  homepage "https://qbo.intuit.com/"

  app "QuickBooks.app"
end
