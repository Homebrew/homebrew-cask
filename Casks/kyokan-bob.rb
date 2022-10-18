cask "kyokan-bob" do
  arch arm: "arm64", intel: "x86"

  version "1.0.0"
  sha256 arm:   "03c913e5ea5d8779122b4da3a9ef0d63307ce84a7a86e84feae53af82bb6fd36",
         intel: "f4e962e38d8679a5abe7baf181d12ea679bd90876fe991a4c3c01b21f10195c8"

  url "https://github.com/kyokan/bob-wallet/releases/download/v#{version}/Bob-#{version}-#{arch}.dmg",
      verified: "github.com/kyokan/bob-wallet/"
  name "Bob Wallet"
  desc "Handshake wallet GUI for managing transactions, name auctions, and DNS records"
  homepage "https://bobwallet.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "Bob.app"

  zap trash: [
    "~/Library/Application Support/Bob",
    "~/Library/Preferences/com.kyokan.BobRelease.plist",
    "~/Library/Saved Application State/com.kyokan.BobRelease.savedState",
  ]
end
