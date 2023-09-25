cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.47.0"
  sha256  arm:   "8711d7c2567b9f67eb46057668cfb636bc1916fee26f3838201aa521931e5c2c",
          intel: "51de8866489a384421b3f122e187a561b09c5cbcb5a57b0a47a1f4377378e09a"

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
