cask "grandtotal" do
  version "8.4.0.1"
  sha256 "41363790aaec39769db87ccfd50e9f0bc262f0d56482b6e1167676989abf1e44"

  url "https://www.mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.dmg"
  name "GrandTotal"
  desc "Create invoices and estimates"
  homepage "https://www.mediaatelier.com/GrandTotal#{version.major}/"

  livecheck do
    url "https://www.mediaatelier.com/GrandTotal#{version.major}/feed.php"
    regex(/GrandTotal[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :sparkle do |items, regex|
      items.map { |item| item.url[regex, 1] }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "GrandTotal.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.GrandTotal3",
    "~/Library/Caches/com.mediaatelier.GrandTotal3",
    "~/Library/HTTPStorages/com.mediaatelier.GrandTotal3",
    "~/Library/Preferences/com.mediaatelier.GrandTotal3.plist",
    "~/Library/Saved Application State/com.mediaatelier.GrandTotal3.savedState",
  ]
end
