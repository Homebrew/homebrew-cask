cask "superset" do
  arch arm: "-arm64"

  version "1.15.1"
  sha256 arm:   "49bbf994abf2e1ae8f99eb69fc363a99feb49e0a314f7e1fd9c7591a0da57073",
         intel: "a0beb4237e646c95f730d9cbc9278db8a51be0af25a6ee42f074bbf3f92f976c"

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
