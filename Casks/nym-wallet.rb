cask "nym-wallet" do
  version "1.0.6"
  sha256 "48eba5c276c8d2b3f6d170ade8dd4b41c1f35c89de45908e5b9da9eb865dc2a2"

  url "https://github.com/nymtech/nym/releases/download/nym-wallet-v#{version}/nym-wallet_#{version}_x64_macos_11.dmg",
      verified: "github.com/nymtech/nym/"
  name "Nym Wallet"
  desc "Use to bond coins or interact with your Nym node or delegate to other nodes"
  homepage "https://nymtech.net/"

  livecheck do
    url :url
    strategy :github_latest
    regex(/wallet[._-]v?(\d+(?:\.\d+)+).*?dmg/i)
  end

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
