cask "nym-wallet" do
  version "1.0.4"
  sha256 "db516f13d8185fa8251cf718708c5c14e3722074e0050fb7cfa9b3738931d1fe"

  url "https://github.com/nymtech/nym/releases/download/nym-wallet-v#{version}/nym-wallet_#{version}_x64_macos_11.dmg",
      verified: "github.com/nymtech/nym/"
  name "Nym Wallet"
  desc "Use to bond coins or interact with your Nym node or delegate to other nodes"
  homepage "https://nymtech.net/"

  depends_on macos: ">= :big_sur"

  app "nym-wallet.app"

  zap trash: [
    "~/Library/Caches/net.nymtech.wallet/",
    "~/Library/Saved Application State/net.nymtech.wallet.savedState/",
  ]

  caveats do
    requires_rosetta
  end
end
