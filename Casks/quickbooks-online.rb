cask "quickbooks-online" do
  version "4.4.0-83"
  sha256 "cc05418a2d52e460289aef64a62d60888f980eaf84dea05322127da637887dc2"

  url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/QuickBooks-#{version}-mac.zip"
  name "QuickBooks"
  homepage "https://qbo.intuit.com/"

  livecheck do
    url "https://http-download.intuit.com/http.intuit/CMO/qbo_client_web/static/release/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "QuickBooks.app"
end
