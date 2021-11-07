cask "atomic-wallet" do
  version "2.34.0"
  sha256 "80f125c97ce999ddd53b553f3c4f38222734474b980a4411ec5d1ffd1eb3c88b"

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
