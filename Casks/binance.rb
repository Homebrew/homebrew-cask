cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.45.2"
  sha256  arm:   "98c6f67a3a591e37fe7f65e5b488afdee8c53e1dda97f557c67028e31b81bceb",
          intel: "17737b3fc67489acde817aff207acc0c226475d5a9a16e4ec0c1529a47456148"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

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
