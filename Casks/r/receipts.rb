cask "receipts" do
  version "1.17-804"
  sha256 "39a680e7248ee871ef96891e52dd654e280a1e6d512a0554310b6432172bb49b"

  url "https://receipts-app.com/update/download/Receipts-#{version}.zip"
  name "Receipts"
  desc "Document management"
  homepage "https://receipts-app.com/"

  livecheck do
    url "https://receipts-app.com/updater.php"
    regex(/href=.*?Receipts[._-]v?(\d+(?:[.-]\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

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
