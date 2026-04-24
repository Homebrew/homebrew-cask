cask "superisland" do
  version "1.0.4"
  sha256 "557f1e8e1875f1b6ad1859629dbaf76d452035e460f80d4a9cafce92addcdc6e"

  url "https://github.com/shobhit99/SuperIsland/releases/download/#{version}/SuperIsland.dmg",
      verified: "github.com/shobhit99/SuperIsland/"
  name "SuperIsland"
  desc "Dynamic island utility"
  homepage "https://dynamicisland.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
