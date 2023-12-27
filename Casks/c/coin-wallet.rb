cask "coin-wallet" do
  version "6.0.2"
  sha256 "56bc31e507f0aaaed0a3924ef7e003b02a619a79acf1a8231ce7600832d7b3fa"

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
