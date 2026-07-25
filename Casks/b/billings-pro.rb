cask "billings-pro" do
  version "1.8.1,39116,2026-04-06-1244"
  sha256 "e98801c189677736216217753a5b2355c8a613fbfa42c45b6e45aedee118a24a"

  url "https://www.marketcircle.com/appcasts/releases/billingspro-releases-#{version.csv.first}.b#{version.csv.second}.#{version.csv.third}.zip"
  name "Billings Pro"
  desc "Invoices, estimates, quotes and time-tracking"
  homepage "https://www.marketcircle.com/billingspro/"

  # Older versions may have a more recent `pubDate` than newer versions, so we
  # have to check all the items in the appcast.
  livecheck do
    url "https://www.daylite.app/appcasts/billingspro.xml"
    regex(/billingspro[._-]releases[._-]v?(\d+(?:\.\d+)+)[._-]b(\d+)[._-](\d+(?:-\d+)+)\.zip/i)
    strategy :sparkle do |items, regex|
      items.map do |item|
        match = item.url.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]},#{match[3]}"
      end
    end
  end

  depends_on macos: :monterey

  app "Billings Pro.app"

  zap trash: [
    "~/Library/Application Support/Billings Pro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.marketcircle.bpsynchelper.sfl*",
    "~/Library/Preferences/com.marketcircle.BillingsPro.plist",
    "~/Library/Saved Application State/com.marketcircle.BillingsPro.savedState",
  ]
end
