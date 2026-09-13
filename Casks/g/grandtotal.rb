cask "grandtotal" do
  version "9.5.1.23"
  sha256 "942b37f1c0d63d4fedc9b5333ed3ce49adbbfaa81bdbc0cff27f2e5d8f538de6"

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
  depends_on :macos

  app "GrandTotal.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.mediaatelier.grandtotal3.sfl*",
    "~/Library/Application Support/com.mediaatelier.GrandTotal*",
    "~/Library/Caches/com.mediaatelier.GrandTotal*",
    "~/Library/HTTPStorages/com.mediaatelier.GrandTotal*",
    "~/Library/Preferences/com.mediaatelier.GrandTotal*.plist",
    "~/Library/Saved Application State/com.mediaatelier.GrandTotal*.savedState",
  ]
end
