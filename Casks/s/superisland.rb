cask "superisland" do
  version "1.0.5"
  sha256 "979d83b8d846ebb838c4992e461fc5033180603cebe2b38baaea1aa84e890618"

  url "https://github.com/shobhit99/SuperIsland/releases/download/#{version}/SuperIsland.dmg",
      verified: "github.com/shobhit99/SuperIsland/"
  name "SuperIsland"
  desc "Dynamic island utility"
  homepage "https://dynamicisland.app/"

  depends_on macos: ">= :sonoma"

  app "SuperIsland.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/SuperIsland_*.plist",
    "~/Library/Application Support/SuperIsland",
    "~/Library/Caches/com.workview.SuperIsland",
    "~/Library/Caches/SuperIsland",
    "~/Library/HTTPStorages/com.workview.SuperIsland",
    "~/Library/HTTPStorages/com.workview.SuperIsland.binarycookies",
    "~/Library/Logs/DiagnosticReports/SuperIsland-*.ips",
    "~/Library/Preferences/com.workview.SuperIsland.plist",
  ]
end
