cask "atomic-wallet" do
  version "2.36.0"
  sha256 "d75f1968654a5c2ab5ff3f2c5cb9ad8fe99c418fd87a577704f451b80268ef07"

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
