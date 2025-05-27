cask "grandtotal" do
  version "9.1.4"
  sha256 "09d340f7ccfcc3d1c9ebe60d88cf8c26ae7df6443cc8f4bb85f799578104d831"

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
