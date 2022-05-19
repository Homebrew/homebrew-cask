cask "binance" do
  version "1.35.0"
  sha256 "54f96812be05a9936e3f1aa4846f68346f23f8151940877aa97ee9031ff94f92"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "http://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
