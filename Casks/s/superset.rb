cask "superset" do
  arch arm: "-arm64"

  version "1.12.1"
  sha256 arm:   "23f63e141299aff1110c87793c63ba3e42e7e3105956730b1f52b2d39c7ee434",
         intel: "3239720c63b4015f70bfed8e2c8cad34d446495c83e88c11f6f54583e6e78051"

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
