cask "superset" do
  arch arm: "-arm64"

  version "1.12.5"
  sha256 arm:   "775e58d5fcee00b99fb20eaaf1882eaadccb5a404c8059f0e84325923ba3366c",
         intel: "95ebc96188304d1b9fbd6cc7a662e18988a395e4dd36b83a5c16395877623880"

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
