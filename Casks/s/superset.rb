cask "superset" do
  arch arm: "-arm64"

  version "1.12.4"
  sha256 arm:   "bd1fbe4536ec7aad12b5d54e7cdb71694362ac75a0f28b4dd94ab25a5f743316",
         intel: "a59e1501ea8bc2c945911bbb57288834b28755bbbe929570b905dc269aee5809"

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
