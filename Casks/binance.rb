cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.42.0"
  sha256  arm:   "8671695393712b366168e9bb136f536bb97a7e096af1c2e771579bd49ad1f498",
          intel: "fc8370b8b4ce2558b69a55043ec7f0d252d370cb6a8524d240845c8c28e3f40b"

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
