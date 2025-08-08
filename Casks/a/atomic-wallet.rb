cask "atomic-wallet" do
  version "2.91.16"
  sha256 "182823e3f0142575df5559123d2afe9da292a2a750d9985a32633dc3ac1a0a73"

  url "https://releases.atomicwallet.io/AtomicWallet-#{version}.dmg"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://releases.atomicwallet.io/download/latest-mac.txt"
    regex(/v?(\d+(?:[.-]\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Atomic Wallet.app"

  zap trash: [
    "~/Library/Application Support/atomic",
    "~/Library/Logs/atomic",
    "~/Library/Preferences/io.atomicwallet.plist",
    "~/Library/Saved Application State/io.atomicwallet.savedState",
  ]
end
