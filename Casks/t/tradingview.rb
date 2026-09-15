cask "tradingview" do
  version "3.4.1"
  sha256 "cf8cd66b5bc7f3755e1d77c31e068ed7b40fce17a76df9b4086ebff04fe85e32"

  url "https://tvd-packages.tradingview.com/stable/#{version}/darwin/TradingView.dmg"
  name "TradingView Desktop"
  desc "Charting and social-networking for investment traders"
  homepage "https://www.tradingview.com/desktop/"

  livecheck do
    url "https://tvd-packages.tradingview.com/stable/latest/darwin/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "TradingView.app"

  uninstall quit: "com.tradingview.tradingviewapp.desktop"

  zap trash: [
    "~/Library/Application Support/TradingView",
    "~/Library/Preferences/com.tradingview.tradingviewapp.desktop.plist",
    "~/Library/Saved Application State/com.tradingview.tradingviewapp.desktop.savedState",
  ]
end
