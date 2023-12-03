cask "gridtracker" do
  version "1.23.1202"
  sha256 "ae8b07f5aeea464fcc7ad0c2415e4c5ba58fbbd43de3929c71259eaa7dc61982"

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
