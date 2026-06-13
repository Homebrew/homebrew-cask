cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.1.33"
  sha256 arm:   "76a7cce3080526b2524b396939efc52922c876f5ccbb67ef02a63e31c2b1d0be",
         intel: "8d265cc5578458c6b9f94af3881571e2ce4b48ea2a2c9866ddd971d5c0a15309"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "emdash.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
