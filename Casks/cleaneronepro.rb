cask "cleaneronepro" do
  version "6.6.7"
  sha256 "4b76a7f2fd937a895adaaca61f7a2ab56a9f1b7a04172c1faabaa0839b05a996"

  url "https://files.trendmicro.com/products/CleanerOnePro/COPG0001/CleanerOnePro_#{version.dots_to_underscores}.zip"
  name "CleanerOnePro"
  desc "All-in-one Cleaner App"
  homepage "https://cleanerone.trendmicro.com/"

  livecheck do
    url "https://res.ta.trendmicro.com/TrendCleanerPro/Sparkle.xml"
    strategy :sparkle, &:short_version
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
