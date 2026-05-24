cask "superset" do
  arch arm: "-arm64"

  version "1.11.3"
  sha256 arm:   "a4cd9dd19d2de89f3e01a6bdd4306cd5624855f786f52a4b166370c054b879d0",
         intel: "b364ce42cef060c93286ecc42a62b61bb74c14757abd1de1a7257056cda2f220"

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
