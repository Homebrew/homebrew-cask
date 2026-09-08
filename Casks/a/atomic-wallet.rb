cask "atomic-wallet" do
  version "2.104.7"
  sha256 "0708734fa9f4b5b9ef3e2ca0d633ff258166deb3166459655029637b15cbb263"

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
