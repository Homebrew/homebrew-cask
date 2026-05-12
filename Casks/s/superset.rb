cask "superset" do
  arch arm: "-arm64"

  version "1.9.1"
  sha256 arm:   "899b2397e937514e1a4bbe887d2a5b37c67bf2a0c4826aae58b497623942232c",
         intel: "3b40149913570d420fba0e0a6518d6da2d523e1139ef8819fdcc6e87888b12fa"

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
