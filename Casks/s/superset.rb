cask "superset" do
  arch arm: "-arm64"

  version "1.11.2"
  sha256 arm:   "afb955d3f74c20cfaa0457b810cd49c6cd0a07369efc1322133ca0bd474e9a69",
         intel: "651d31bac99527b4a4a430dbaf88ae9ade9d892874aa77253074032da26897a7"

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
