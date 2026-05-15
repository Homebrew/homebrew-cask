cask "superset" do
  arch arm: "-arm64"

  version "1.9.6"
  sha256 arm:   "bc3c16139908775e4a829cde701803f1e3da9b6cd0b4332526e70179a37e7b6a",
         intel: "d216af8d6ad7f2cc72ce95f724ea61a3ad66085d910813cc4205bb5d8d9b416f"

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
