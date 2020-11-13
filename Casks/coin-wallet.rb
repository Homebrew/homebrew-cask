cask "coin-wallet" do
  version "3.0.1"
  sha256 "ee0cee1c90b0431a059e49a8aabf678dc1243c833c4891f635043a76ab1a2489"

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
