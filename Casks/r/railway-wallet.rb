cask "railway-wallet" do
  arch arm: "arm64", intel: "x64"

  version :latest
  sha256 :no_check

  url "https://github.com/Railway-Wallet/Railway-Wallet/releases/latest/download/Railway.mac.#{arch}.dmg",
      verified: "github.com/Railway-Wallet/Railway-Wallet/"
  name "Railway Wallet"
  desc "Railway Private DeFi Wallet"
  homepage "https://www.railway.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Railway.app"

  zap trash: [
    "~/Library/Application Support/Railway",
    "~/Library/Caches/com.railway.wallet",
    "~/Library/Logs/Railway",
    "~/Library/Preferences/com.railway.wallet.plist",
  ]
end
