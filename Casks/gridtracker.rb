cask "gridtracker" do
  version "1.22.1204"
  sha256 "8fea8db6839e725d5a8e728a3dab214603ee7562e797c7f7267ca8f451ba8e18"

  url "https://downloads.gridtracker.org/v#{version}/GridTracker-#{version}-mac-x64.zip"
  name "GridTracker"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/grid-tracker/"

  livecheck do
    url "https://gridtracker.org/release.html"
    regex(%r{href=.*?/GridTracker[._-]v?(\d+(?:\.\d+)+)-mac-x64\.zip}i)
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
