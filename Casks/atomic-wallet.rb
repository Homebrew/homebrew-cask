cask "atomic-wallet" do
  version "2.48.2"
  sha256 "b16a3e6d0dd482ab3d1282f729d299d9e3a5228436fb4752677eb676dce5ea65"

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
