cask "binance" do
  version "1.33.2"
  sha256 "1ebedd281b9d92fdf9879988eec58cd07fd0ba5c1a216a68a12fa2ea2e053c97"

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
