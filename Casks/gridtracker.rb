cask "gridtracker" do
  version "1.22.1007,1.22.1007"
  sha256 "46fbcc352f518dd6d299e9835c44aecc058fd2b0ae275ad814c8a61a253050bb"

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
