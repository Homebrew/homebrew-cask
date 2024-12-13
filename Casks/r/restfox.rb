cask "restfox" do
  arch arm: "arm64", intel: "x64"

  version "0.32.0"
  sha256 arm:   "2f862a97651914276f5c3336c1ab5782ac937e567f5dcea6b8500b06c4a4f18d",
         intel: "93a5b8625e1a918f890ad026f09298461d0d0711ed020afaa73c5555dfd17012"

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
