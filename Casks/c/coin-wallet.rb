cask "coin-wallet" do
  version "6.0.1"
  sha256 "c7c3b47ffb874466a09edf21c3216b2e601731ee76a6299c11ef85f51adee3a8"

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
