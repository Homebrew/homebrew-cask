cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.52.4"
  sha256  arm:   "61c740563b8b1044edd455d06647206a2e6c9a65e092481831d19b212f4d8a03",
          intel: "9c23abcf48d16878a98d2c94340b6d0e94dda3167db14876af6a8937f790ee82"

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
