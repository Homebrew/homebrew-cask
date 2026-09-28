cask "coin-wallet" do
  version "6.30.0"
  sha256 "2bedcac20a44c532681099f44975d39d2fe497d4e13778a2a3c8bd5a1e160a03"

  url "https://github.com/CoinSpace/CoinSpace/releases/download/v#{version}/Coin.Wallet.dmg"
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
  depends_on :macos

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
