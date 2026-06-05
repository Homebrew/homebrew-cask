cask "superset" do
  arch arm: "-arm64"

  version "1.12.3"
  sha256 arm:   "45c9a6de1235526401574d156b57c0b9657f4b2cf8945071835ce2cc563c3e49",
         intel: "f46a4029c46bbea452ed7b0f1508fc20908bb51d806aee1f7b591a43b55448d9"

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
