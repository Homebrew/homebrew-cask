cask "bison-wallet" do
  arch arm: "arm64", intel: "amd64"

  version "1.0.3"
  sha256 arm:   "0dcafd9509b435a5e762aeb11cbc63baa084dc71c58d017072707bc292c72bbc",
         intel: "c0433ab203a5b9c631bb4c6bc21edaa27b90d6266203ef1c16c6c6a7a6a53c74"

  url "https://github.com/decred/dcrdex/releases/download/v#{version}/bisonw-desktop-darwin-#{arch}-v#{version}.dmg"
  name "Bison Wallet"
  desc "Multi-coin wallet with feeless DEX, atomic swaps, and arbitrage tools"
  homepage "https://github.com/decred/dcrdex"

  depends_on macos: ">= :sierra"

  app "Bison Wallet.app"

  zap trash: [
    "~/Library/Application Support/Dexc",
    "~/Library/Preferences/com.decred.dcrdex.plist",
  ]
end
