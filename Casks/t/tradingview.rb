cask "tradingview" do
  version "2.6.1"
  sha256 "134540720523483750a1bab0af02ad153f03dfc3896cdb8615c08afa633e2b60"

  url "https://tvd-packages.tradingview.com/stable/#{version}/darwin/TradingView.dmg"
  name "TradingView Desktop"
  desc "Charting and social-networking for investment traders"
  homepage "https://www.tradingview.com/desktop/"

  livecheck do
    url "https://tvd-packages.tradingview.com/stable/latest/darwin/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "TradingView.app"

  zap trash: [
    "~/Library/Application Support/TradingView",
    "~/Library/Preferences/com.tradingview.tradingviewapp.desktop.plist",
    "~/Library/Saved Application State/com.tradingview.tradingviewapp.desktop.savedState",
  ]
end
