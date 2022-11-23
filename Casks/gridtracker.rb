cask "gridtracker" do
  version "1.22.1123"
  sha256 "405b2c9d990b1f370ccad24bad0d4f82a9c770c0581eecfe9d510f7f424457f2"

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
