cask "cleaneronepro" do
  version "6.7.3,5272"
  sha256 "aeb23d1e199b98d4c79e440668e7ebc863338ae4545e4e14bd5930db4c5c3092"

  url "https://files.trendmicro.com/products/CleanerOnePro/COPG0001/#{version.csv.second}/CleanerOnePro_#{version.csv.first.dots_to_underscores}.zip"
  name "CleanerOnePro"
  desc "All-in-one Cleaner App"
  homepage "https://cleanerone.trendmicro.com/"

  livecheck do
    url "https://res.ta.trendmicro.com/TrendCleanerPro/Sparkle.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "CleanerOnePro.app"

  uninstall launchctl: "com.trendmicro.TrendCleanerPro.HelperTool",
            quit:      "com.trendmicro.TrendCleanerPro",
            delete:    [
              "/Library/LaunchDaemons/com.trendmicro.TrendCleanerPro.HelperTool.plist",
              "/Library/PrivilegedHelperTools/com.trendmicro.TrendCleanerPro.HelperTool",
            ]

  zap trash: [
    "~/Library/Application Support/com.trendmicro.TrendCleanerPro",
    "~/Library/Caches/com.trendmicro.TrendCleanerPro",
    "~/Library/Logs/com.trendmicro.TrendCleanerPro",
    "~/Library/Preferences/com.trendmicro.TrendCleanerPro.plist",
  ]
end
