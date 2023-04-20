cask "active-trader-pro" do
  version "1.0.50"
  sha256 "8f1266d172afdd9dd90c2ec93ebcf9fa304fdaaabe1f4ca8bbd59bc9ed769b30"

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

  postflight do
    system_command "CW_INSTALL_DEPS_ONLY=1"
    system_command "#{appdir}/Active Trader Pro.app/Contents/SharedSupport/activetrader/Active Trader Pro/run_atp"
  end

  zap trash: [
    "~/Library/Application Support/Active Trader Pro",
    "~/Library/HTTPStorages/com.fmr.activetrader",
    "~/Library/HTTPStorages/com.fmr.activetrader.binarycookies",
    "~/Library/Preferences/com.fmr.activetrader.plist",
    "~/Library/Saved Application State/com.fmr.activetrader.savedState",
  ]
end
