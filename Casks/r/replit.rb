cask "replit" do
  arch intel: "-Intel"

  version "1.0.12"
  sha256 arm:   "c2cfc0c6bfdab45d36981ed8bd4ee247a95b068022e989c22a9eb26f242f5671",
         intel: "b7ae1e249c04dbffb3386e7bcc000af13a96705f284dea8c50ff1509d9a69f61"

  url "https://github.com/replit/desktop/releases/download/v#{version}/Replit#{arch}.dmg",
      verified: "github.com/replit/desktop/"
  name "Replit"
  desc "Software development and deployment platform"
  homepage "https://replit.com/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Replit.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.replit.*",
    "~/Library/Application Support/Replit",
    "~/Library/Caches/com.electron.replit",
    "~/Library/Caches/com.electron.replit.ShipIt",
    "~/Library/HTTPStorages/com.electron.replit",
    "~/Library/Logs/Replit",
    "~/Library/Preferences/com.electron.replit.plist",
    "~/Library/Saved Application State/com.electron.replit.savedState",
  ]
end
