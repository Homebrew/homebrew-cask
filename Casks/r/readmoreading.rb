cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.8.2"
  sha256 arm:   "69d9ffef5ab68481222c07e2c881a47c8d972861bac5fabe36129f70e76cd73c",
         intel: "61c02a94dc604578104204c10af01e2f750f336e964a4a6576a9d0c635ac2708"

  url "https://github.com/eCrowdMedia/remake/releases/download/v#{version}/Readmoo.-#{version}-#{arch}.dmg",
      verified: "github.com/eCrowdMedia/remake/"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

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
