cask "superset" do
  arch arm: "-arm64"

  version "1.15.0"
  sha256 arm:   "6444cab7781113e1a3db8a37c36f250204ea613f11d9e2a173b0a7a8c65076f8",
         intel: "58515389a1d589b1e17360f77a642f9a4a248d5387876c5d37d483f31cb24834"

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
