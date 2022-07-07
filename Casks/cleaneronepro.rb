cask "cleaneronepro" do
  version "6.6.2,4920"
  sha256 "a2bc0802fcfe778e988e9d7b808a6ac07859693e20cbd5913ea6b35a1ef08182"

  url "https://files.trendmicro.com/products/CleanerOnePro/COPG0001/CleanerOnePro_#{version.csv.first.dots_to_underscores}.zip"
  name "cleaneronepro"
  desc "All-in-one Cleaner App"
  homepage "https://cleanerone.trendmicro.com/"

  livecheck do
    url "https://res.ta.trendmicro.com/TrendCleanerPro/Sparkle.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "CleanerOnePro.app"

  uninstall delete:    [
              "/Library/LaunchDaemons/com.trendmicro.TrendCleanerPro.HelperTool.plist",
              "/Library/PrivilegedHelperTools/com.trendmicro.TrendCleanerPro.HelperTool",
            ],
            launchctl: "com.trendmicro.TrendCleanerPro.HelperTool",
            quit:      "com.trendmicro.TrendCleanerPro"

  zap trash: [
    "~/Library/Application Support/com.trendmicro.TrendCleanerPro",
    "~/Library/Caches/com.trendmicro.TrendCleanerPro",
    "~/Library/Logs/com.trendmicro.TrendCleanerPro",
    "~/Library/Preferences/com.trendmicro.TrendCleanerPro.plist",
  ]
end
