cask "gridtracker2" do
  version "2.261019.5"
  sha256 "13edfabebb36c72a5527be9a685604f45211de32cfdf41a443136825a7deda30"

  url "https://download2.gridtracker.org/GridTracker2-#{version}-universal-mac.zip"
  name "GridTracker2"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/"

  livecheck do
    url "https://download2.gridtracker.org/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on :macos

  app "GridTracker2.app"

  zap trash: [
    "~/Library/Application Support/GridTracker*",
    "~/Library/Caches/GridTracker",
    "~/Library/Preferences/org.gridtracker.GridTracker*.plist",
    "~/Library/Saved Application State/org.gridtracker.GridTracker*.savedState",
  ]
end
