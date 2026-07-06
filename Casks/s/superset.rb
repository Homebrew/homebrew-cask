cask "superset" do
  arch arm: "-arm64"

  version "1.13.1"
  sha256 arm:   "7272ce96a62f058682f12fbcd16c91c6a48c8360f519e98a0b926ea0a1094cb5",
         intel: "d228dd81346cc571914f771fc62d149b004574966c3125869855a460e3f55b0a"

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
