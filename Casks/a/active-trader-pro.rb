cask "active-trader-pro" do
  version "1.0.51"
  sha256 "b2594dc0078f149cbed1f4cc8cddc4ab7137541f2e855d2cc825bf8d11204231"

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
