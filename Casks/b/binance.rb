cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "1.53.8"
  sha256  arm:   "d2e583bde598d29392e81f4cd1e072b000c2ed1f44ffd8ffcb88eb62014f32ee",
          intel: "f2b05522984fdd1fbaa15a6903663f90073020f33d75e03d5e4a1fd16ee83f0f"

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
