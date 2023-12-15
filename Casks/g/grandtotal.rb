cask "grandtotal" do
  version "8.2.0.11"
  sha256 "947cc997ca3b61f35f772bc70bdbd4d4ec13d17c10a9f8083bc7a088842cb50c"

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
