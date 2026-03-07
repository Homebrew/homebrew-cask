cask "superset" do
  version "1.1.2"
  sha256 "70e385d7be2a9b0af4f4aad07235bd5195eee650ba83a97d162764ff81fb4399"

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
