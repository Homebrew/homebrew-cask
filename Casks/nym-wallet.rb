cask "nym-wallet" do
  version "1.1.10"
  sha256 "d8ee332332cbe06d638333796388b95cc2f7d7512b6a5ffbb0db5174569b8320"

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
