cask "quickbooks-online" do
  version "5.1.0-95"
  sha256 "3ce5da0123a0bc862ae58d4a046733a5c3a1e010af32356b77161db02c7de77c"

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  name "QuickBooks"
  desc "Accounting software"
  homepage "https://qbo.intuit.com/"

  livecheck do
    url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "QuickBooks.app"
end
