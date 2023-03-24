cask "kyokan-bob" do
  arch arm: "arm64", intel: "x86"

  version "2.0.0"
  sha256 arm:   "4b3134c50accc9a57572a5adf6622240e53dafbe247cc4bc1ac18a4f21affd1c",
         intel: "23b0f56567be8935de93147d1cc291f6dcf32fd3426e5e12b72916bf02e8684d"

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
