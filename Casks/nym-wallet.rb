cask "nym-wallet" do
  version "1.0.7"
  sha256 "564a23de42a5e9d0c0bc7863b1b4b6607fb812d15eeb92b179f8a4b7e6ce7992"

  url "https://github.com/nymtech/nym/releases/download/nym-wallet-v#{version}/nym-wallet_#{version}_x64.dmg",
      verified: "github.com/nymtech/nym/"
  name "Nym Wallet"
  desc "Use to bond coins or interact with your Nym node or delegate to other nodes"
  homepage "https://nymtech.net/"

  livecheck do
    url :url
    regex(/href=.*?nym-wallet[._-]v?(\d+(?:\.\d+)+).*?\.dmg/i)
    strategy :github_latest
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
