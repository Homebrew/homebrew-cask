cask "atomic-wallet" do
  version "2.55.4-404"
  sha256 "94a75030894a19eaa99f54bf6ef6a44a04fd101b750616a329fae5aec66304b1"

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
