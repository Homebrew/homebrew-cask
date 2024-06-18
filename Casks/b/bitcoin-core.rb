cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "27.1"
  sha256 arm:   "06bf5d34aef01f21dac88708efa32d5e673c3ce1c8f17b1ca34b0e517ed8e43f",
         intel: "25445080e2616d7c621f48f51e7a4294698d92016ef27ab88608cbe824f93364"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-#{arch}-apple-darwin.zip"
  name "Bitcoin Core"
  desc "Bitcoin client and wallet"
  homepage "https://bitcoincore.org/"

  livecheck do
    url "https://bitcoincore.org/en/download/"
    regex(/href=.*?bitcoin[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[^"' >]*?\.zip/i)
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
