cask "superset" do
  arch arm: "-arm64"

  version "1.9.5"
  sha256 arm:   "4f4b99e16f39cc2dc92a9cc7a564000a638dbc838e7ec09bc8e4946f86ce860f",
         intel: "a36f8f6e7e51201cdf608da365fbab9a7327bd9d65e67153af3508d98b9f58de"

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
