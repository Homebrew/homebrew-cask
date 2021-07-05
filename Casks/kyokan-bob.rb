cask "kyokan-bob" do
  version "0.7.1"
  sha256 "8067666e5ebfa5befd918bbccf121bb1b219497c4f5fb679e829736ea5cf39e7"

  url "https://github.com/kyokan/bob-wallet/releases/download/#{version}/Bob-#{version}.dmg",
      verified: "github.com/kyokan/bob-wallet"
  name "Bob Wallet"
  desc "Handshake wallet GUI for name auction and DNS record management"
  homepage "https://bobwallet.io/"

  livecheck do
    url :url
    strategy :git
    regex(/^(\d+(?:\.\d+)*)$/i)
  end

  app "Bob.app"

  zap trash: [
    "~/Library/Application Support/Bob",
    "~/Library/Preferences/com.kyokan.BobRelease.plist",
    "~/Library/Saved Application State/com.kyokan.BobRelease.savedState",
  ]
end
