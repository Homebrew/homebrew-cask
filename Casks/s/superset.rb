cask "superset" do
  arch arm: "-arm64"

  version "1.12.2"
  sha256 arm:   "9378aa4987025b507b872aec574a78e22d73c561627f88fe3f7b29009393b3ea",
         intel: "24514033f75aa4046b997f7a69b387268ad6697ac92f2ad94b6c338738394a1b"

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
