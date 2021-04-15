cask "kyokan-bob" do
  version "0.7.0"
  sha256 "99aa702877bcf7c08d71b8e2923159f59f236712c599b564bedcea24625914ea"

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
