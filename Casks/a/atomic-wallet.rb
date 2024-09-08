cask "atomic-wallet" do
  version "2.89.8"
  sha256 "c08c449d1144dfdd995b441119b03bb55ba52ba79f437b61e89026a4566037b4"

  url "https://releases.atomicwallet.io/AtomicWallet-#{version}.dmg"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://releases.atomicwallet.io/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Atomic Wallet.app"

  zap trash: "~/Library/Application Support/atomic"

  caveats do
    requires_rosetta
  end
end
