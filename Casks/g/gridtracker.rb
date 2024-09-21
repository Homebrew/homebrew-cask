cask "gridtracker" do
  version "1.24.0920"
  sha256 "1d37a9aa521e15b31ec4d60905e5b84f35b015e162917f6cbc27b6ef658660dd"

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
