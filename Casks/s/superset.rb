cask "superset" do
  arch arm: "-arm64"

  version "1.11.1"
  sha256 arm:   "9aa5404ca7159ff2c8378c4c553a5d5daa1a8379d8e273290a4bb2fd3a82d2e7",
         intel: "4e5d5d4ea53593f72785e68b53064f1e84690384cdeee1fbfcc5468393f92a1e"

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/Superset-#{version}#{arch}.dmg",
      verified: "github.com/superset-sh/superset/"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Superset.app"

  zap trash: [
    "~/Library/Application Support/Superset",
    "~/Library/Caches/com.superset.desktop",
    "~/Library/HTTPStorages/com.superset.desktop",
    "~/Library/Preferences/com.superset.desktop.plist",
    "~/Library/Saved Application State/com.superset.desktop.savedState",
  ]
end
