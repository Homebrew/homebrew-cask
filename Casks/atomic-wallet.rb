cask "atomic-wallet" do
  version "2.65.0"
  sha256 "221d135fbeafbb6dae32e325d01db3d56fe8423ed3523aba8bb41c3bb351f60c"

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
