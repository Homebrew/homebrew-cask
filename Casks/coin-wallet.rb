cask "coin-wallet" do
  version "3.0.2"
  sha256 "b72a7a19bd75a4321a6ecc815c186e93f1252a18e68048b3e645fd716faff7b1"

  # github.com/CoinSpace/CoinSpace/ was verified as official when first introduced to the cask
  url "https://github.com/CoinSpace/CoinSpace/releases/download/v#{version}/Coin.Wallet.dmg"
  appcast "https://github.com/CoinSpace/CoinSpace/releases.atom"
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
