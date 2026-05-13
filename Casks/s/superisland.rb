cask "superisland" do
  version "1.0.7"
  sha256 "58cac70638abec0c95e638efd269874a4354c5a935c7ce9a70b52b5ca55982d6"

  url "https://github.com/shobhit99/SuperIsland/releases/download/#{version}/SuperIsland.dmg",
      verified: "github.com/shobhit99/SuperIsland/"
  name "SuperIsland"
  desc "Dynamic island utility"
  homepage "https://dynamicisland.app/"

  depends_on macos: :sonoma

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
