cask "superset" do
  arch arm: "-arm64"

  version "1.13.0"
  sha256 arm:   "8b9e29f72b5c74727fdcf501ed2e09652479798a9572eab00390b305b1b66eb4",
         intel: "9fca6766e641ca01d18d187e1f4e53ee721a66dbd9f99a2bdb99d9471437f352"

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
