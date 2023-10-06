cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.48.2"
  sha256  arm:   "aecf3cee5db3742be2e1d0ce2d8ba5ee58a9f0cb85209e1620e645b99e710e1e",
          intel: "668202be668eb3d209301a5fd60f1b8dfdb566198493f909ce7066eb8b8d87e3"

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
