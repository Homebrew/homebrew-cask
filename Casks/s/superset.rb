cask "superset" do
  arch arm: "-arm64"

  version "1.26.0"
  sha256 arm:   "f77a8625c4daf0e6a5a667afc6744ae9ddc8c66ec5b74d850ab1de0e5b33e5a4",
         intel: "4eb5ad8cc83cfed770091439bb7048878ebb6fe779301abe3f70a2afafeb58e7"

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/Superset-#{version}#{arch}.dmg"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Superset.app"

  uninstall quit: "com.superset.desktop"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.superset.desktop.sfl*",
    "~/Library/Application Support/Superset",
    "~/Library/Caches/com.superset.desktop",
    "~/Library/HTTPStorages/com.superset.desktop",
    "~/Library/Logs/Superset",
    "~/Library/Preferences/com.superset.desktop.plist",
    "~/Library/Saved Application State/com.superset.desktop.savedState",
  ]
end
