cask "gridtracker2" do
  version "2.261108.4"
  sha256 "1efbf262accaae2f1e417d4ad4593739be4ff8629b146c7e3cacf54c1841ce8c"

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
