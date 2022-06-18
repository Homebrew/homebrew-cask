cask "atomic-wallet" do
  version "2.47.8"
  sha256 "81d5d2777f59170358a114303f8bb59c8c82436b9ce0c00d00ec95fb0d839b89"

  url "https://releases.atomicwallet.io/AtomicWallet-#{version}.zip"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://releases.atomicwallet.io/latest-mac.yml"
    strategy :electron_builder
  end

  app "Atomic Wallet.app"

  zap trash: "~/Library/Application Support/atomic"
end
