cask "coin-wallet" do
  version "5.7.0"
  sha256 "4c3d727511424c8a23bfdff39715ba082e04626879725d5960c1b79a98307bd4"

  url "https://github.com/CoinSpace/CoinSpace/releases/download/v#{version}/Coin.Wallet.dmg",
      verified: "github.com/CoinSpace/CoinSpace/"
  name "Coin Wallet"
  desc "Digital currency wallet"
  homepage "https://coin.space/"

  auto_updates true

  app "Coin Wallet.app"

  zap trash: [
    "~/Library/Application Support/Coin Wallet",
    "~/Library/Caches/com.coinspace.wallet*",
    "~/Library/Preferences/ByHost/com.coinspace.wallet.*.plist",
    "~/Library/Preferences/com.coinspace.wallet*.plist",
    "~/Library/Saved Application State/com.coinspace.wallet.savedState",
  ]
end
