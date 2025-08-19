cask "grandtotal" do
  version "9.1.7.11"
  sha256 "6e0a1c90056bbbfbc6ee0d90f9b36e0ff81c7073226804bb93aa244131ec1fb1"

  url "https://www.mediaatelier.com/GrandTotal#{version.major}/GrandTotal_#{version}.dmg"
  name "GrandTotal"
  desc "Create invoices and estimates"
  homepage "https://www.mediaatelier.com/GrandTotal/"

  livecheck do
    url "https://www.mediaatelier.com/GrandTotal#{version.major}/feed.php"
    regex(/GrandTotal[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :sparkle do |items, regex|
      items.map { |item| item.url[regex, 1] }
    end
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "GrandTotal.app"

  zap trash: [
    "~/Library/Application Support/com.mediaatelier.GrandTotal*",
    "~/Library/Caches/com.mediaatelier.GrandTotal*",
    "~/Library/HTTPStorages/com.mediaatelier.GrandTotal*",
    "~/Library/Preferences/com.mediaatelier.GrandTotal*.plist",
    "~/Library/Saved Application State/com.mediaatelier.GrandTotal*.savedState",
  ]
end
