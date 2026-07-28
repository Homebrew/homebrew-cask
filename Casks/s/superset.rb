cask "superset" do
  arch arm: "-arm64"

  version "1.18.1"
  sha256 arm:   "88a26fdfcaee8d2c661e1e73629fec6ab992a1bd624e729f88310fd6d8f6da55",
         intel: "46ebcf03e6ba7f520e64fefa780418aae853985eeb5f7fdfcaa2983ce4db89d2"

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

  uninstall quit: "com.superset.desktop"

  zap trash: [
    "~/Library/Application Support/Superset",
    "~/Library/Caches/com.superset.desktop",
    "~/Library/HTTPStorages/com.superset.desktop",
    "~/Library/Preferences/com.superset.desktop.plist",
    "~/Library/Saved Application State/com.superset.desktop.savedState",
  ]
end
