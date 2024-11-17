cask "toptracker" do
  version "1.6.2,6524"
  sha256 "3b626f3a4761b6fd8678da4dfed5beabdf1ea198478a8a5f3a06585de56804b0"

  url "https://d101nvfmxunqnl.cloudfront.net/desktop/builds/mac/toptracker_#{version.csv.first}.#{version.csv.second}.dmg",
      verified: "d101nvfmxunqnl.cloudfront.net/"
  name "TopTracker"
  desc "Time tracking and invoice processing"
  homepage "https://tracker.toptal.com/tracker/"

  livecheck do
    url "https://tracker-api.toptal.com/desktop/updates/mac"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "TopTracker.app"

  zap trash: [
    "~/Library/Application Support/TopTracker",
    "~/Library/HTTPStorages/com.toptracker",
    "~/Library/Preferences/com.toptracker.plist",
    "~/Library/Saved Application State/com.toptracker.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
