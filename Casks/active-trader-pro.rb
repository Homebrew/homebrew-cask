cask "active-trader-pro" do
  version "1.0.50"
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

  postflight do
    # The postinstall script automatically opens the app by making a call to
    # `open -b com.fmr.activetrader`. Therefore, we must suppress this behavior
    # to make the cask installation non-interactive.
    retries ||= 3
    ohai "The Active Trader Pro package postinstall script launches the app" if retries >= 3
    ohai "Attempting to close Active Trader Pro to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/Active Trader Pro.app"]
  end

  uninstall quit:    "com.fmr.activetrader",
            pkgutil: "com.fmr.activetrader",
            delete:  "/Applications/Active Trader Pro.app"

  zap trash: [
    "~/Library/Application Support/Active Trader Pro",
    "~/Library/HTTPStorages/com.fmr.activetrader",
    "~/Library/HTTPStorages/com.fmr.activetrader.binarycookies",
    "~/Library/Preferences/com.fmr.activetrader.plist",
    "~/Library/Saved Application State/com.fmr.activetrader.savedState",
  ]
end
