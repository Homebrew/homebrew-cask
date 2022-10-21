cask "gridtracker" do
  version "1.22.1016"
  sha256 "57622bc9cd90fd9053081f187d50a700dccf5506ada6a86bb59f94d68bef7153"

  url "https://downloads.gridtracker.org/v#{version}-Harvest/GridTracker-#{version}-mac-x64.zip"
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
