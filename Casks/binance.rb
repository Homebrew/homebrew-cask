cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.46.0"
  sha256  arm:   "becc40c3f6279b3f2649bccfc2b8e3858ae78196a7206864d475b3d0574457ea",
          intel: "fe487621da7ea08ff38d147f17046d656c51479e7ffad1dfc7ee53efdfe17d3c"

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
