cask "binance" do
  arch arm: "arm64", intel: "x64"

  version "2.6.1"
  sha256 arm:   "917d93de715225ee0189d223300e77f765401a9a9dc8bb507d99b0cdff243296",
         intel: "e2bb78d93e06e41b9b93bcae735c062692476b83fed5315c541eb9c36595d167"

  url "https://ftp.binance.com/electron-desktop/mac/production/binance-#{version}-#{arch}.dmg"
  name "Binance"
  desc "Cryptocurrency exchange"
  homepage "https://binance.com/"

  livecheck do
    url "https://ftp.binance.com/electron-desktop/mac/production/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Binance.app"

  zap trash: [
    "~/Library/Application Support/Binance",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.binance.binancedesktop.sfl*",
    "~/Library/Logs/Binance",
    "~/Library/Preferences/com.binance.BinanceDesktop.plist",
    "~/Library/Saved Application State/com.binance.BinanceDesktop.savedState",
  ]
end
