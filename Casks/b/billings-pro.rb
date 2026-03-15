cask "billings-pro" do
  version "1.8.0,39009,2026-03-11-1718"
  sha256 "1cc0f3c2ad69870bf65281309190223acb0613c4372933043463c2556c3a0046"

  url "https://www.marketcircle.com/appcasts/releases/billingspro-releases-#{version.csv.first}.b#{version.csv.second}.#{version.csv.third}.zip"
  name "Billings Pro"
  desc "Invoices, estimates, quotes and time-tracking"
  homepage "https://www.marketcircle.com/billingspro/"

  livecheck do
    url "https://www.daylite.app/appcasts/billingspro.xml"
    regex(/billingspro[._-]releases[._-]v?(\d+(?:\.\d+)+)[._-]b(\d+)[._-](\d+(?:-\d+)+)\.zip/i)
    strategy :sparkle do |item, regex|
      match = item.url.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]},#{match[3]}"
    end
  end

  depends_on macos: ">= :monterey"

  app "Billings Pro.app"

  zap trash: [
    "~/Library/Application Support/Billings Pro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.marketcircle.bpsynchelper.sfl*",
    "~/Library/Preferences/com.marketcircle.BillingsPro.plist",
    "~/Library/Saved Application State/com.marketcircle.BillingsPro.savedState",
  ]
end
