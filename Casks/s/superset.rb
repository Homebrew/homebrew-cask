cask "superset" do
  arch arm: "-arm64"

  version "1.8.8"
  sha256 arm:   "e41796a7ef6db5c8d09ad4915c24055b75da23c04f7233798d165095343d9c18",
         intel: "ccf3fd2d97b209e293475a9930f992de35db90020c49ec3bfd339710f06b941a"

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
