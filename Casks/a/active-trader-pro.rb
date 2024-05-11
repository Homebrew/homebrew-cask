cask "active-trader-pro" do
  version "1.0.55"
  sha256 :no_check

  url "https://www.fidelity.com/webcontent/CodeweaverInstaller/ActiveTraderPro.pkg"
  name "Active Trader Pro"
  desc "Trading platform"
  homepage "https://www.fidelity.com/trading/advanced-trading-tools/active-trader-pro/overview"

  livecheck do
    url "https://www.fidelity.com/webcontent/CodeweaverUpgradeInfo/activetrader-mac.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  pkg "ActiveTraderPro.pkg"

  uninstall quit: "com.fmr.activetrader"

  zap trash: [
    "~/Library/Application Support/Active Trader Pro",
    "~/Library/HTTPStorages/com.fmr.activetrader",
    "~/Library/HTTPStorages/com.fmr.activetrader.binarycookies",
    "~/Library/Preferences/com.fmr.activetrader.plist",
    "~/Library/Saved Application State/com.fmr.activetrader.savedState",
  ]
end
