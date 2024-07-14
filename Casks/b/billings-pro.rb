cask "billings-pro" do
  version "1.7.20,37904"
  sha256 :no_check

  url "https://www.marketcircle.com/appcasts/releases/latest-billingspro.zip"
  name "Billings Pro"
  desc "Invoices, estimates, quotes and time-tracking"
  homepage "https://www.marketcircle.com/billingspro/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :high_sierra"

  app "Billings Pro.app"

  zap trash: [
    "~/Library/Application Support/Billings Pro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.marketcircle.bpsynchelper.sfl*",
    "~/Library/Preferences/com.marketcircle.BillingsPro.plist",
    "~/Library/Saved Application State/com.marketcircle.BillingsPro.savedState",
  ]
end
