cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "de1c9ca20d7563edba1b882969c8aba9b1cfac455344e73435578aa15372d32d",
         intel: "8b58679c993fb6a844bb3b39f74d3a742a723d97b70352cd9ee412dda733ce7a"

  url "https://github.com/eCrowdMedia/remake/releases/download/v#{version}/Readmoo.-#{version}-#{arch}.dmg",
      verified: "github.com/eCrowdMedia/remake/"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Readmoo看書.app"

  zap trash: [
    "~/Library/Application Support/Readmoo看書",
    "~/Library/Caches/com.electron.readmoo",
    "~/Library/Caches/com.electron.readmoo.ShipIt",
    "~/Library/HTTPStorages/com.electron.readmoo",
    "~/Library/Logs/Readmoo看書",
    "~/Library/Preferences/com.electron.readmoo.plist",
    "~/Library/Saved Application State/com.electron.readmoo.savedState",
  ]
end
