cask "gridtracker2" do
  version "2.260307.1"
  sha256 "bc6441e16e62c33baedbbc8437f5ad6d89045b08f99bef43743553d586187f69"

  url "https://download2.gridtracker.org/GridTracker2-#{version}-universal-mac.zip"
  name "GridTracker2"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/"

  livecheck do
    url "https://download2.gridtracker.org/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "GridTracker2.app"

  zap trash: [
    "~/Library/Application Support/GridTracker*",
    "~/Library/Caches/GridTracker",
    "~/Library/Preferences/org.gridtracker.GridTracker*.plist",
    "~/Library/Saved Application State/org.gridtracker.GridTracker*.savedState",
  ]
end
