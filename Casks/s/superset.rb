cask "superset" do
  version "0.0.60"
  sha256 "7891d9933c75fa5b08084e45067fc5f1ea3b1a3eeda9b761b87ccd69dd2e0ae3"

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/Superset-arm64.dmg",
      verified: "github.com/superset-sh/superset/"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  depends_on arch: :arm64
  depends_on macos: ">= :monterey"

  app "Superset.app"

  zap trash: [
    "~/Library/Application Support/Superset",
    "~/Library/Caches/com.superset.desktop",
    "~/Library/HTTPStorages/com.superset.desktop",
    "~/Library/Preferences/com.superset.desktop.plist",
    "~/Library/Saved Application State/com.superset.desktop.savedState",
  ]
end
