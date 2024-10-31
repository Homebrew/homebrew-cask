cask "rize" do
  arch arm: "arm64", intel: "x64"

  version "1.5.0"
  sha256  arm:   "ae60f1f17d8ebe74fc6b0906b6dd0505e677c27cdd00a4ff7f65474390f7c124",
          intel: "7d349a9e83c22b0e72da00a5231c19f9f9674e985a10e104a7a7e981830d8f16"

  url "https://github.com/rize-io/lua/releases/download/v#{version}/Rize-#{version}-#{arch}.dmg",
      verified: "github.com/rize-io/lua/"
  name "Rize"
  desc "AI time tracker"
  homepage "https://rize.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Rize.app"

  zap trash: [
    "~/Library/Application Support/Rize",
    "~/Library/Caches/io.rize",
    "~/Library/Caches/io.rize.ShipIt",
    "~/Library/HTTPStorages/io.rize",
    "~/Library/Preferences/io.rize.plist",
    "~/Library/Saved Application State/io.rize.savedState",
  ]
end
