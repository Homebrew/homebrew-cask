cask "kyokan-bob" do
  arch arm: "arm64", intel: "x86"

  version "2.1.0"
  sha256 arm:   "0fe432c089333b21af568ba1ef5f33fda95c1ab2a27e9cc445413ec012661fd1",
         intel: "84aa56ec0d7269dd66764d8ca01bb110d9fd88e380b5fbc7749dc7d6b321bd22"

  url "https://github.com/kyokan/bob-wallet/releases/download/v#{version}/Bob-#{version}-#{arch}.dmg",
      verified: "github.com/kyokan/bob-wallet/"
  name "Bob Wallet"
  desc "Handshake wallet GUI for managing transactions, name auctions, and DNS records"
  homepage "https://bobwallet.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Bob.app"

  zap trash: [
    "~/Library/Application Support/Bob",
    "~/Library/Preferences/com.kyokan.BobRelease.plist",
    "~/Library/Saved Application State/com.kyokan.BobRelease.savedState",
  ]
end
