cask "gridtracker" do
  version "1.24.0922"
  sha256 "d504f4d936d325799226821f38c538636ffe8c9bc42e5402ff70631025bb3f03"

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
