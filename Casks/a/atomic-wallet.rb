cask "atomic-wallet" do
  version "2.99.1"
  sha256 "01d8e048615187514e03216e438703dc0f679a262668395f26dfd136a79e70c2"

  url "https://releases.atomicwallet.io/AtomicWallet-#{version}.dmg"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://releases.atomicwallet.io/download/latest-mac.txt"
    regex(/v?(\d+(?:[.-]\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  app "Atomic Wallet.app"

  zap trash: [
    "~/Library/Application Support/atomic",
    "~/Library/Logs/atomic",
    "~/Library/Preferences/io.atomicwallet.plist",
    "~/Library/Saved Application State/io.atomicwallet.savedState",
  ]
end
