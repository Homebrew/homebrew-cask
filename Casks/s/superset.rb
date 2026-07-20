cask "superset" do
  arch arm: "-arm64"

  version "1.16.0"
  sha256 arm:   "a5524fe9160d67982fbeb5b2e1a9206f4881ea1007e20d5f32601707c3948960",
         intel: "a552fe80c51c85d784695dd056a5d26f5b2e083c5b6ac274d7e899adcd761ac7"

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
