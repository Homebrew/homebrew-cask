cask "receipts" do
  version "1.11-632"
  sha256 "fbe255538e50f9ef9d5b9e0141850f050bd86f2746fbf6dfcd84e5ea1ed2f73e"

  url "https://www.receipts-app.com/update/download/Receipts-#{version}.zip"
  name "Receipts"
  desc "Document management"
  homepage "https://www.receipts-app.com/"

  livecheck do
    url "https://www.receipts-app.com/updater.php"
    regex(/href=.*?Receipts[._-]v?(\d+(?:[.-]\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Receipts.app"

  zap trash: [
    "~/Documents/Receipts.receipts",
    "~/Library/Application Scripts/com.apperdeck.mac.Receipts.ReceiptsShareExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apperdeck.mac.receipts.sfl2",
    "~/Library/Caches/com.apperdeck.mac.Receipts",
    "~/Library/Containers/com.apperdeck.mac.Receipts.ReceiptsShareExtension",
    "~/Library/HTTPStorages/com.apperdeck.mac.Receipts",
    "~/Library/Logs/Receipts",
    "~/Library/PDF Services/Save PDF to Receipts",
    "~/Library/Preferences/com.apperdeck.mac.Receipts.plist",
    "~/Library/Saved Application State/com.apperdeck.mac.Receipts.savedState",
    "~/Library/WebKit/com.apperdeck.mac.Receipts",
  ]
end
