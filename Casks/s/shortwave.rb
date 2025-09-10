cask "shortwave" do
  version "2025.9.1"
  sha256 "a6929f57847e47a8a7bdc8cd81ec7769a51e23cedb4a27234d02eeda0826f731"

  url "https://storage.googleapis.com/shortwave-downloads/desktop_app/darwin/universal/Shortwave-darwin-universal-#{version}.zip",
      verified: "storage.googleapis.com/shortwave-downloads/"
  name "Shortwave"
  desc "Email client"
  homepage "https://www.shortwave.com/"

  livecheck do
    url "https://storage.googleapis.com/shortwave-downloads/desktop_app/darwin/universal/RELEASES.json"
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
