cask "nym-wallet" do
  version "1.1.11"
  sha256 "561cb871e083a30ceec1282daeee9de267811c49ef1bde626cae4a760c20a909"

  url "https://github.com/nymtech/nym/releases/download/nym-wallet-v#{version}/nym-wallet_#{version}_x64.dmg",
      verified: "github.com/nymtech/nym/"
  name "Nym Wallet"
  desc "Use to bond coins or interact with your Nym node or delegate to other nodes"
  homepage "https://nymtech.net/"

  livecheck do
    url "https://github.com/nymtech/nym/releases?q=prerelease%3Afalse"
    regex(/href=.*?nym-wallet[._-]v?(\d+(?:\.\d+)+)"/i)
    strategy :page_match
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
