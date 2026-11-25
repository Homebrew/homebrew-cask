cask "billings-pro" do
  version "1.8.2,39121,2026-10-27-1410"
  sha256 "c64a651a7e487f1f98c23b96e64731a24928c10dfc336f4729ac356e98316ecf"

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

  uninstall launchctl: "com.marketcircle.BPSyncHelper"

  zap trash: [
    "~/Library/Application Support/Billings Pro",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.marketcircle.bpsynchelper.sfl*",
    "~/Library/Preferences/com.marketcircle.BillingsPro.plist",
    "~/Library/Saved Application State/com.marketcircle.BillingsPro.savedState",
  ]
end
