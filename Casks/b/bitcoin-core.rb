cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "28.0"
  sha256 arm:   "cb5935484998a74eda6b8caa699be844567b2942de9e723a875debbbc01a53c1",
         intel: "04c39cec7ed4c56da11811b382db85e6c211d0e12eb6e5bdf2701eba9de292e7"

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
