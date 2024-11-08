cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.54.1"
  sha256  arm:   "ad28cc8071be7b6f00027fcf298efd7abf52c7c46508bfe7a1b3bc8405e88c23",
          intel: "11b84987f3740495b3f8a24b0b48abbacd1c53c6964980846732987eb192cb0a"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
