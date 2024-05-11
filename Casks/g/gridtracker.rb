cask "gridtracker" do
  version "1.24.0504"
  sha256 "7b39aa6173b29b996565ff7562985bd542d7425ab524d1519676f2f0f6bf8163"

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
