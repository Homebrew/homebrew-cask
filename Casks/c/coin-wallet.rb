cask "coin-wallet" do
  version "6.1.0"
  sha256 "21f4cd4a4bd495c28341fe1b946baa0e2ed8a0c674e2f7931441a9e219d1bc94"

  url "https://github.com/CoinSpace/CoinSpace/releases/download/v#{version}/Coin-Wallet.dmg",
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
