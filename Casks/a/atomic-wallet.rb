cask "atomic-wallet" do
  version "2.104.5"
  sha256 "285fd003ede508a8948dc7506e2c3ac84bea672d7fc7b3cda1f23874a0673d19"

  url "https://releases.atomicwallet.io/AtomicWallet-#{version}.dmg"
  name "Atomic Wallet"
  desc "Manage Bitcoin, Ethereum, XRP, Litecoin, XLM and over 300 other coins and tokens"
  homepage "https://atomicwallet.io/"

  livecheck do
    url "https://releases.atomicwallet.io/download/latest-mac.txt"
    regex(/v?(\d+(?:[.-]\d+)+)/i)
  end

  depends_on macos: :monterey

  app "Atomic Wallet.app"

  zap trash: [
    "~/Library/Application Support/atomic",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.atomicwallet.sfl*",
    "~/Library/Logs/atomic",
    "~/Library/Preferences/io.atomicwallet.plist",
    "~/Library/Saved Application State/io.atomicwallet.savedState",
  ]
end
