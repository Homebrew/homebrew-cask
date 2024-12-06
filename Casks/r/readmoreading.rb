cask "readmoreading" do
  arch arm: "arm64", intel: "x64"

  version "1.1.37"
  sha256 arm:   "eb2440566e6556d2f41ff6a0a11e35eeb13f07386547df8af1a1db74acb4ca8f",
         intel: "73fd2c7934e86f77d3d763dd6357f3951fb3ded0662d555f5d1ec775cb963589"

  url "https://github.com/eCrowdMedia/remake/releases/download/v#{version}/Readmoo.-#{version}-#{arch}.dmg",
      verified: "github.com/eCrowdMedia/remake/"
  name "Readmo Reading"
  desc "Traditional Chinese eBook service"
  homepage "https://readmoo.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

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
