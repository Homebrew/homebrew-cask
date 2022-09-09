cask "billings-pro" do
  version "1.7.19,37903"
  sha256 :no_check

  url "https://www.marketcircle.com/appcasts/releases/latest-billingspro.zip"
  name "Billings Pro"
  desc "Invoices, estimates, quotes and time-tracking"
  homepage "https://www.marketcircle.com/billingspro/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Billings Pro.app"

  zap trash: "~/Library/Application Support/Billings Pro"
end
