cask "restfox" do
  arch arm: "arm64", intel: "x64"

  version "0.23.0"
  sha256 arm:   "cf42be661d39aa45a9c1475659b308f88ab3aef4518a3ee4839aa92aaf6d634e",
         intel: "71224be55ce3f0c19b8774703e4b97c9781af58ba3570f07fa8d56cbddfaaf1f"

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-#{arch}-#{version}.zip",
      verified: "github.com/flawiddsouza/Restfox/releases/download/"
  name "Restfox"
  desc "Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Restfox.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.restfox.sfl*",
    "~/Library/Application Support/Restfox",
    "~/Library/Caches/com.electron.restfox*",
    "~/Library/HTTPStorages/com.electron.restfox",
    "~/Library/Logs/Restfox",
    "~/Library/Preferences/ByHost/com.electron.restfox.*.plist",
    "~/Library/Preferences/com.electron.restfox.plist",
    "~/Library/Saved Application State/com.electron.restfox.savedState",
  ]
end
