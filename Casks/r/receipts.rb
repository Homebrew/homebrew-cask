cask "receipts" do
  version "1.18-818"
  sha256 "4433aec2c1ec4efb91b377f5bf33f42b293a5b720f3707387791973eca9dbbdd"

  url "https://receipts-app.com/update/download/Receipts-#{version}.zip"
  name "Receipts"
  desc "Document management"
  homepage "https://receipts-app.com/"

  livecheck do
    url "https://receipts-app.com/updater.php"
    regex(/href=.*?Receipts[._-]v?(\d+(?:[.-]\d+)+)\.zip/i)
  end

  app "Receipts.app"

  zap trash: [
    "~/Documents/Receipts.receipts",
    "~/Library/Application Scripts/com.apperdeck.mac.Receipts.ReceiptsShareExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.apperdeck.mac.receipts.sfl*",
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
