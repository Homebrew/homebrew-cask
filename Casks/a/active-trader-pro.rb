cask "active-trader-pro" do
  version "1.0.54"
  sha256 "d28d4fabecfd23813029553f08ca189a232101bbc5832894726e462196a52c18"

  url "https://www.fidelity.com/webcontent/Codeweaver/activetrader-#{version}.zip"
  name "Active Trader Pro"
  desc "Trading platform"
  homepage "https://www.fidelity.com/trading/advanced-trading-tools/active-trader-pro/overview"

  livecheck do
    url "https://www.fidelity.com/webcontent/CodeweaverUpgradeInfo/activetrader-mac.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "Active Trader Pro.app"

  uninstall quit: "com.fmr.activetrader"

  zap trash: [
    "~/Library/Application Support/Active Trader Pro",
    "~/Library/HTTPStorages/com.fmr.activetrader",
    "~/Library/HTTPStorages/com.fmr.activetrader.binarycookies",
    "~/Library/Preferences/com.fmr.activetrader.plist",
    "~/Library/Saved Application State/com.fmr.activetrader.savedState",
  ]
end
