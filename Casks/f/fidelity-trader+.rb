cask "fidelity-trader+" do
  version "4.4.1"
  sha256 :no_check

  url "https://digital.fidelity.com/stgw/digital/atp-mac/FidelityTraderPlus.pkg"
  name "Fidelity Trader+"
  desc "Trading platform"
  homepage "https://www.fidelity.com/trading/advanced-trading-tools/active-trader-pro/overview"

  livecheck do
    url "https://digital.fidelity.com/stgw/digital/atp-mac/appcast.macos.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  pkg "FidelityTraderPlus.pkg"

  uninstall quit:    "com.fidelity.activetrader",
            pkgutil: "com.fidelity.activetrader"

  zap trash: [
    "~/Library/Application Scripts/com.fidelity.activetrader",
    "~/Library/Containers/com.fidelity.activetrader",
  ]
end
