cask "superset" do
  arch arm: "-arm64"

  version "1.10.2"
  sha256 arm:   "c4dc5e330495ed0b11820cae6f6aa8e78579fcd9e5687815563f7e3ce23f5c14",
         intel: "c46a875c84c52b4e0a39e249b97282887cc3f5d9b85b2f2808e0d0a14a227172"

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
