cask "gridtracker" do
  version "1.24.0908"
  sha256 "30c2ccf70b1ade12e80792a08b14b36d7abf79a237933c86d00cc6dff8b6e70a"

  url "https://downloads.gridtracker.org/v#{version}/GridTracker-#{version}-mac-x64.zip"
  name "GridTracker"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/"

  livecheck do
    url "https://gridtracker.org/index.php/downloads/gridtracker-downloads"
    regex(/href=.*?GridTracker[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]x64\.zip/i)
  end

  depends_on macos: ">= :mojave"

  app "GridTracker.app"

  zap trash: [
    "~/Library/Application Support/GridTracker",
    "~/Library/Caches/GridTracker",
    "~/Library/Preferences/org.gridtracker.gridtracker.plist",
    "~/Library/Saved Application State/org.gridtracker.gridtracker.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
