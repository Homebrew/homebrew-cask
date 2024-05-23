cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.52.3"
  sha256  arm:   "9b86e80570e4f651b644c58c9a4fcfab57ca5b99acd29ff81a9a44605516bc8c",
          intel: "62201880c12cef81e34aa76a0e86f43a149c0ac3faebf7cc1a5f2ccf1366de1f"

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
