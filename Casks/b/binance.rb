cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.0.1"
  sha256 arm:   "a16e08b5e474e35e68b22eb3e588a3e24154bcc87aa8121e29724ba01e85843d",
         intel: "9d08c964293980a4fd193c52df47369bfaaa15b05b795b3e88fad0f8bf662504"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Logs/Binance",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
