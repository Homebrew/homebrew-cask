cask "atomic-wallet" do
  version "2.87.3"
  sha256 "80a5aa67609906e7aa5be15d65cb2d84b1c4ce3414eff0154d821fc451b1c112"

  url "https://releases.atomicwallet.io/AtomicWallet-#{version}.dmg"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://releases.atomicwallet.io/"
    regex(/href=.*?atomicwallet[._-](\d+(?:\.\d+)+[._-]\d+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Atomic Wallet.app"

  zap trash: "~/Library/Application Support/atomic"

  caveats do
    requires_rosetta
  end
end
