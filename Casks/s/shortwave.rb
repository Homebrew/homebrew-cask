cask "shortwave" do
  arch arm: "arm64", intel: "x64"

  version "2024.12.03"
  sha256  arm:   "6024e4ebb478b8cf57b2f566b935a4bd8382f621c57598f9fb6df4cbe3a8dc44",
          intel: "da8fe4be492ef7410cac8a68f0602a58b9df60b1be6389b7f8c076f2ffdb04bb"

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
