cask "superset" do
  arch arm: "-arm64"

  version "1.14.0"
  sha256 arm:   "4d8e43bbc4e8fde0d12f9ecc7747e83219503c7db542b1bc0a5a7956811c155c",
         intel: "10c9d20710458e3051e73f8f3a293de3f2d25a717dfe00271c4098cddaf36036"

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
