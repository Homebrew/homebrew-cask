cask "superset" do
  arch arm: "-arm64"

  version "1.11.0"
  sha256 arm:   "0f68aad8f7ebe2ebf978f93035d01244c0d561504550a18823d347df103b8932",
         intel: "94e36f3da9d0e0490a5bf9d6890fa48028b546cdd0b4a4f31df8be2642e0509a"

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
