cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.43.2"
  sha256  arm:   "b242421f18ea7803437ebe6fd4220ebab045d3f61b058030fb8bb1a4b2f41423",
          intel: "7d733a54e213ea8b26aabf42b829482ef23c3b73da2a5a617b989d39fb6a62ae"

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
