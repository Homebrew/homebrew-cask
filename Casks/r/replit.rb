cask "replit" do
  version "1.1.9"
  sha256 :no_check

  url "https://desktop.replit.com/download/mac"
  name "Replit"
  desc "Software development and deployment platform"
  homepage "https://replit.com/"

  livecheck do
    url "https://desktop.replit.com/latest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey
  depends_on arch: :arm64

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
