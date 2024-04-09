cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.52.0"
  sha256  arm:   "74f1ee5db79bb7cba60f694f1e791b761dbbb01ad9cc0adfa81115d119b222e5",
          intel: "407043d20981e018727a976592589842b6ad38c6679a3e68a5949194365c3844"

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
