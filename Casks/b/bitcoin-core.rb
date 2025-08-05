cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0"
  sha256 arm:   "f660d4a968f5dabcee4d72cd31b4a50ab0d646386a9fc78c6208a9a101f8878d",
         intel: "3bbee3e1f006365542d5c84beb632c90a6d206fa610c1fe415f52e69febe9b0c"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-#{arch}-apple-darwin.zip"
  name "Bitcoin Core"
  desc "Bitcoin client and wallet"
  homepage "https://bitcoincore.org/"

  livecheck do
    url "https://bitcoincore.org/bin/"
    regex(/href=.*?bitcoin[._-]core[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :big_sur"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", "0755"
  end

  # Don't trash directory "~/Library/Application Support/Bitcoin" because it can contain bitcoin wallets
  zap trash: [
    "~/Library/Application Support/Bitcoin/blocks",
    "~/Library/Application Support/Bitcoin/chainstate",
    "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist",
    "~/Library/Preferences/org.bitcoinfoundation.Bitcoin-Qt.plist",
    "~/Library/Saved Application State/org.bitcoinfoundation.Bitcoin-Qt.savedState",
  ]
end
