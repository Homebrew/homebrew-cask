cask "atomic-wallet" do
  version "2.28.2"
  sha256 "6c8f8469d6f03c30aba751cd2c379cbc1b3689990573309dc43fc9b2da29aeb5"

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
