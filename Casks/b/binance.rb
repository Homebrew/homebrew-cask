cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.46.4"
  sha256  arm:   "d414311709d7bae3a8bd6390302294ee031983004e37bccaaf1d2b3af375502c",
          intel: "dbc306f491ccbc4dd8b5ab3c6ceeb2810224a37737393307d0e31555ef968f99"

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
