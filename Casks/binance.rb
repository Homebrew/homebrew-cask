cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.46.2"
  sha256  arm:   "f8c018dc7a11f88c590cda6496c53b1ed22cea8386ef8afea756c4b10ab692c1",
          intel: "2104746695632a69559e2e82dfe913232c0d7a0476d292771145d128a0bbbb8c"

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
