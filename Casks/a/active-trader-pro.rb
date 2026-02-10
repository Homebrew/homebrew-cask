cask "active-trader-pro" do
  version "1.0.55"
  sha256 "394689bce9630cd949a40ae9914533acaf028f8d08019833dbb7a49f3416866e"

  url "https://www.fidelity.com/webcontent/Codeweaver/activetrader-#{version}.zip"
  name "Active Trader Pro"
  desc "Trading platform"
  homepage "https://www.fidelity.com/trading/advanced-trading-tools/active-trader-pro/overview"

  deprecate! date: "2025-12-17", because: :discontinued
  disable! date: "2026-12-17", because: :discontinued

  auto_updates true

  app "Active Trader Pro.app"

  uninstall quit: "com.fmr.activetrader"

  zap trash: [
    "~/Documents/ATP-*.log",
    "~/Library/Application Support/Active Trader Pro",
    "~/Library/HTTPStorages/com.fmr.activetrader",
    "~/Library/HTTPStorages/com.fmr.activetrader.binarycookies",
    "~/Library/Preferences/com.fmr.activetrader.plist",
    "~/Library/Saved Application State/com.fmr.activetrader.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
