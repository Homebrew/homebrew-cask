cask "coin-wallet" do
  version "6.32.0"
  sha256 "8a6f0acbee4b580b316565632953d62fa25c8a2c75a0e472008ab5b14ff582dc"

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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coinspace.wallet.sfl*",
    "~/Library/Caches/com.coinspace.wallet*",
    "~/Library/HTTPStorages/com.coinspace.wallet",
    "~/Library/Logs/Coin Wallet",
    "~/Library/Preferences/ByHost/com.coinspace.wallet.*.plist",
    "~/Library/Preferences/com.coinspace.wallet*.plist",
    "~/Library/Saved Application State/com.coinspace.wallet.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
