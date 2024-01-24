cask "grandtotal" do
  version "8.2.2.13"
  sha256 "4ebb2ad2d34c6a303f22c5409caf30137d7807462a3f7b702f68ba2f5b1c5255"

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
