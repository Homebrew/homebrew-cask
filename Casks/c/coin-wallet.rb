cask "coin-wallet" do
  version "6.29.0"
  sha256 "04afee2a05d0d3a4c295e850a5ad28aa2f11dc33d209b966b3c32dc2e1ee6a38"

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
  depends_on macos: :big_sur

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
