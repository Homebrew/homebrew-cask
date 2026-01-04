cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.3.0"
  sha256 arm:   "45dbc07b01223e8289b6af7eb0688d09bc79b06e97765ed9e49a6dbd0a53d71e",
         intel: "400563556d3e9742dd49459ef3e9da0c9516204407d06848150ee5229a518128"

  url "https://github.com/eCrowdMedia/remake/releases/download/v#{version}/Readmoo.-#{version}-#{arch}.dmg",
      verified: "github.com/eCrowdMedia/remake/"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
