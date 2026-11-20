cask "receipts-space" do
  version "3.6,36002"
  sha256 "081c73be637248b488b276e5b3c5940b1460380243c53cda6d35b94bc946ff39"

  url "https://receipts-space.com/download/macos/Receipts%20Space-#{version.csv.first}-#{version.csv.second}.zip"
  name "Receipts Space"
  desc "Organise receipts, invoices and other documents"
  homepage "https://receipts-space.com/"

  livecheck do
    url "https://receipts-app.com/updater-macos2"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "Receipts Space.app"

  zap trash: [
    "~/Library/Application Scripts/de.holtwick.mac.homebrew.Receipts2.ReceiptsShareExtension",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/de.holtwick.mac.homebrew.receipts2.sfl*",
    "~/Library/Application Support/de.holtwick.mac.homebrew.Receipts2",
    "~/Library/Caches/de.holtwick.mac.homebrew.Receipts2",
    "~/Library/Caches/ReceiptsExport",
    "~/Library/Containers/de.holtwick.mac.homebrew.Receipts2.ReceiptsShareExtension",
    "~/Library/HTTPStorages/de.holtwick.mac.homebrew.Receipts2",
    "~/Library/Logs/Receipts/de_holtwick_mac_homebrew_Receipts2*",
    "~/Library/Preferences/de.holtwick.mac.homebrew.Receipts2.plist",
    "~/Library/Saved Application State/de.holtwick.mac.homebrew.Receipts2.savedState",
    "~/Library/WebKit/de.holtwick.mac.homebrew.Receipts2",
  ]
end
