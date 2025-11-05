cask "coin-wallet" do
  version "6.20.0"
  sha256 "ba52c32ff811b55a06e2d6c55f2a806f57d822db675a6dc4798797e72921cf08"

  url "https://github.com/CoinSpace/CoinSpace/releases/download/v#{version}/Coin.Wallet.dmg",
      verified: "github.com/CoinSpace/CoinSpace/"
  name "Coin Wallet"
  desc "Digital currency wallet"
  homepage "https://coin.space/"

  livecheck do
    url "https://coin.space/api/v4/update/mac/x64/v0.0.0"
    strategy :json do |json|
      json["version"]&.sub("v", "")
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Coin Wallet.app"

  zap trash: [
    "~/Library/Application Support/Coin Wallet",
    "~/Library/Caches/com.coinspace.wallet*",
    "~/Library/Preferences/ByHost/com.coinspace.wallet.*.plist",
    "~/Library/Preferences/com.coinspace.wallet*.plist",
    "~/Library/Saved Application State/com.coinspace.wallet.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
