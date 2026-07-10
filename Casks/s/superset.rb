cask "superset" do
  arch arm: "-arm64"

  version "1.14.1"
  sha256 arm:   "1b75a73685173501bad1434158e5779ff1447ae169b567f3dfad6070b49c0d37",
         intel: "84bd13a882a3dbdec8928717b9e87b562b326b7cd4b3aa5e0cd7ceb3e4c018c9"

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
