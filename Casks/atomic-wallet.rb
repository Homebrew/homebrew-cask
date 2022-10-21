cask "atomic-wallet" do
  version "2.55.3-1262"
  sha256 "a848b1b694fc69545be25c5213d337e1d57920c83e987f8bfd87da8d83441ebd"

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
