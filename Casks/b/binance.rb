cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.48.7"
  sha256  arm:   "7b94940d32ef88bf8f0e08e20f3cb1b4fae22d350157d86ad4734d8afacc42ce",
          intel: "43940cf1256a034acea5f877d892e72f0e451166fbaa9533c06c354066c0c7f5"

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
