cask "gridtracker" do
  version "1.22.0503"
  sha256 "298c922675c2067530625c1ffe67a42f64d409fc00a37fc00a1e10b56f774841"

  url "https://storage.googleapis.com/gt_download/v#{version}-2/GridTracker-#{version}-mac-x64.zip"
  name "GridTracker"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/grid-tracker/"

  livecheck do
    url "https://storage.googleapis.com/gt_download/"
    regex(/GridTracker[._-]v?(\d+(?:\.\d+)+)[._-]mac[._-]x64\.zip/i)
  end

  depends_on macos: ">= :mojave"

  app "GridTracker-#{version}-mac-x64/GridTracker.app"

  zap trash: [
    "~/Library/Application Support/GridTracker",
    "~/Library/Caches/GridTracker",
    "~/Library/Preferences/org.gridtracker.gridtracker.plist",
    "~/Library/Saved Application State/org.gridtracker.gridtracker.savedState",
  ]
end
