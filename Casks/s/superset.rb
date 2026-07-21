cask "superset" do
  arch arm: "-arm64"

  version "1.16.1"
  sha256 arm:   "122a313084602e25f09a49988ba84296d0869fae5333f5f385df25269cff105c",
         intel: "69eb4503c1dc6481e3b5aa643ffedd6236631564f5aa0f1b03c72e543564eb5c"

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
