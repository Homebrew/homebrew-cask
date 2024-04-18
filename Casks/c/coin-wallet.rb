cask "coin-wallet" do
  version "6.3.0"
  sha256 "237ac12c0ab94268c8999fa88d794cf24f1ed7f8bd3453d1888b6f7ac5a25f94"

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
