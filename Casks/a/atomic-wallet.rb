cask "atomic-wallet" do
  version "2.76.4"
  sha256 "909783befef17913e5d4b4500c35cd0a99beb2c9ed45970bee724c593bde0422"

  url "https://get.atomicwallet.io/download/atomicwallet-#{version}.dmg"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://get.atomicwallet.io/download/"
    regex(/href=.*?atomicwallet[._-](\d+(?:\.\d+)+[._-]\d+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Atomic Wallet.app"

  zap trash: "~/Library/Application Support/atomic"

  caveats do
    requires_rosetta
  end
end
