cask "shortwave" do
  arch arm: "arm64", intel: "x64"

  version "2024.11.03"
  sha256  arm:   "7e4ddd6d1afdbc8f70b186c566ad290ecad549764ca58809d38b26f58a0a15f1",
          intel: "3ee4fb74425a426ba1f207a3f3ed776ad2aee4d31263417df4d9e4bfa0bd50ac"

  url "https://storage.googleapis.com/shortwave-downloads/desktop_app/darwin/#{arch}/Shortwave-darwin-#{arch}-#{version}.zip",
      verified: "storage.googleapis.com/shortwave-downloads/"
  name "Shortwave"
  desc "Email client"
  homepage "https://www.shortwave.com/"

  livecheck do
    url "https://storage.googleapis.com/shortwave-downloads/desktop_app/darwin/#{arch}/RELEASES.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Shortwave.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.shortwave.sfl*",
    "~/Library/Application Support/Shortwave",
    "~/Library/Caches/com.electron.shortwave",
    "~/Library/Caches/com.electron.shortwave.ShipIt",
    "~/Library/HTTPStorages/com.electron.shortwave",
    "~/Library/Logs/Shortwave",
    "~/Library/Preferences/com.electron.shortwave.plist",
    "~/Library/Saved Application State/com.electron.shortwave.savedState",
  ]
end
