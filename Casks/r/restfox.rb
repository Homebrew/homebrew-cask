cask "restfox" do
  arch arm: "arm64", intel: "x64"

  version "0.14.0"
  sha256 arm:   "fd7d867d26d182b37d6cc8cc1c9fac1fd8859c58ed6c7a50c7e9809d72d0158a",
         intel: "ecdece4485288c356a5b1aa8555171f0a64f708710463a8f1b83873d00700412"

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
