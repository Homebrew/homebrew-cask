cask "receipts" do
  version "1.12-643"
  sha256 "e14dba38c17773e36724959a70272b40a98ec4a9b17a98468cbdc7181cba896a"

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
