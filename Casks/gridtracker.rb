cask "gridtracker" do
  version "1.23.0110"
  sha256 "4cbe5b383e42107d2fc9fd1dbd00f686a9e4d92f83ea3a207bf2c429e7fa8485"

  url "https://downloads.gridtracker.org/v#{version}/GridTracker-#{version}-mac-x64.zip"
  name "GridTracker"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/"

  livecheck do
    url "https://gridtracker.org/index.php/documentation/change-log"
    regex(/v(\d+(?:\.\d+)+)/i)
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
