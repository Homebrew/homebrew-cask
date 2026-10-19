cask "restfox" do
  arch arm: "arm64", intel: "x64"

  version "0.41.0"
  sha256 arm:   "7defd3e0ef1c47c17396d679e26526282be29659cf288e8c63ed8270fa3fd946",
         intel: "10749555b8283fc3d32439f9ec1f0383e855eaf8d45eaca07b90fe03bb0795df"

  url "https://github.com/flawiddsouza/Restfox/releases/download/v#{version}/Restfox-darwin-#{arch}-#{version}.zip"
  name "Restfox"
  desc "Offline-first web HTTP client"
  homepage "https://restfox.dev/"

  auto_updates true
  depends_on :macos

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
