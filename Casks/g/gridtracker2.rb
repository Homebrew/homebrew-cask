cask "gridtracker2" do
  version "2.261117.7"
  sha256 "39646617dab5684baf558042792243008c023c47cd357fc498b930f2e4e31205"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.gridtracker.gridtracker2.sfl*",
    "~/Library/Application Support/GridTracker*",
    "~/Library/Caches/GridTracker",
    "~/Library/Logs/GridTracker2",
    "~/Library/Preferences/org.gridtracker.GridTracker*.plist",
    "~/Library/Saved Application State/org.gridtracker.GridTracker*.savedState",
  ]
end
