cask "atomic-wallet" do
  version "2.27.1"
  sha256 :no_check

  url "https://get.atomicwallet.io/download/atomicwallet.dmg"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://releases.atomicwallet.io/latest-mac.yml"
    strategy :page_match
    regex(/AtomicWallet-(\d+(?:\.\d+)*)\.zip/i)
  end

  app "Atomic Wallet.app"

  zap trash: "~/Library/Application Support/atomic"
end
