cask "gridtracker" do
  version "1.21.1217"
  sha256 "fd32335a82f663be0df1d03f5990c5ba2fa2df7790624e6ad30d862311efc350"

  url "https://download.gridtracker.org/v#{version}/GridTracker-#{version}-mac-x64.zip"
  name "GridTracker"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/grid-tracker/"

  livecheck do
    url "https://download.gridtracker.org/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/}i)
  end

  depends_on macos: ">= :mojave"

  app "GridTracker.app"

  zap trash: [
    "~/Library/Application Support/GridTracker",
    "~/Library/Caches/GridTracker",
    "~/Library/Preferences/org.gridtracker.gridtracker.plist",
    "~/Library/Saved Application State/org.gridtracker.gridtracker.savedState",
  ]
end
