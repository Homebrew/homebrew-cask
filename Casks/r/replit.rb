cask "replit" do
  arch intel: "-Intel"

  version "1.0.14"
  sha256 arm:   "193c4282d69c0b49bc4d3780c4db102b2602bfb6d3f7cd7322957cde5ff6cb41",
         intel: "4d2bbec2d40060f97b3140a8390ac2ae8baf7bb4e769783550748a5d599a7d6c"

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
