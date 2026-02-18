cask "superset" do
  version "0.0.80"
  sha256 "cc5bd7352475058c8feb2a2baf5217fab0d3849b88e5d61a4a8c88286c4578e9"

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/Superset-arm64.dmg",
      verified: "github.com/superset-sh/superset/"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
