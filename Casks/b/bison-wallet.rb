cask "bison-wallet" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.4"
  sha256 arm:   "31e5945adc602840aeb3e853909a8003b185a95e31fbc5c8a7db4a23f7c29c2d",
         intel: "889d54f752c96e6a079db29b66d14d8b8e4a5577c91d1b3d499c4e781f75554e"

  url "https://github.com/decred/dcrdex/releases/download/v#{version}/bisonw-desktop-darwin-#{arch}-v#{version}.dmg"
  name "Bison Wallet"
  desc "Multi-coin wallet with feeless DEX, atomic swaps, and arbitrage tools"
  homepage "https://github.com/decred/dcrdex"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Bison Wallet.app"

  zap trash: [
    "~/Library/Application Support/Dexc",
    "~/Library/Preferences/com.decred.dcrdex.plist",
  ]
end
