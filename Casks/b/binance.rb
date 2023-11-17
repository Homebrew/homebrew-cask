cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.48.5"
  sha256  arm:   "59836573c0697be9ded05080754d9c7b3ed517c0204a24af9e5e6ebd64935eab",
          intel: "da45a1ddf4e5347c892088d21d0d0398e3562ba81c64cce25534770580b5952b"

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
