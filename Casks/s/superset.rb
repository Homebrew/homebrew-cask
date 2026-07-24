cask "superset" do
  arch arm: "-arm64"

  version "1.17.0"
  sha256 arm:   "e93f26ad9aa1b68249baa767ceeab0d6e6fa12f176b10fa30bc336ba880e2990",
         intel: "47389e9d259718c507e3b9c91bcee391b18529499f824c6331bc9db9c20682f7"

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

  uninstall quit: "com.superset.desktop"

  zap trash: [
    "~/Library/Application Support/Superset",
    "~/Library/Caches/com.superset.desktop",
    "~/Library/HTTPStorages/com.superset.desktop",
    "~/Library/Preferences/com.superset.desktop.plist",
    "~/Library/Saved Application State/com.superset.desktop.savedState",
  ]
end
