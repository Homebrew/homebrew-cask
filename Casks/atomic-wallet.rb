cask "atomic-wallet" do
  version "2.58.0"
  sha256 "befe9cfef2fd3a70d97f094c2bd4a010077d869a53bced8376f4e08d4ef596e5"

  url "https://get.atomicwallet.io/download/atomicwallet-#{version}.dmg"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://get.atomicwallet.io/download/"
    strategy :page_match
    regex(/href=.*?atomicwallet[._-](\d+(?:\.\d+)+[._-]\d+)\.dmg/i)
  end

  app "Atomic Wallet.app"

  zap trash: "~/Library/Application Support/atomic"
end
