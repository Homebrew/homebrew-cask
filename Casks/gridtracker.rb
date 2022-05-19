cask "gridtracker" do
  version "1.22.0503,1.21.0503-2"
  sha256 "298c922675c2067530625c1ffe67a42f64d409fc00a37fc00a1e10b56f774841"

  url "https://storage.googleapis.com/gt_download/v#{version.csv.second}/GridTracker-#{version.csv.first}-mac-x64.zip",
      verified: "storage.googleapis.com/gt_download/"
  name "GridTracker"
  desc "Warehouse of amateur radio information presented in an easy to use interface"
  homepage "https://gridtracker.org/grid-tracker/"

  livecheck do
    url "https://gridtracker.org/release.html"
    regex(%r{href=.*/v?(\d+(?:[.-]\d+)+)/GridTracker[._-]v?(\d+(?:\.\d+)+)-mac-x64\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second},#{match.first}" }
    end
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
