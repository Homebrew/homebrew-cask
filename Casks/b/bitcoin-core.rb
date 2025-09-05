cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "29.1"
  sha256 arm:   "cc2999866b86595eb864c5491a55383fbd0724e114a782d1ac64f52ca2da08da",
         intel: "4397906b873e1ec9110a3ffd60576da5a2ed990024867e4900908a9bcfebca98"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-#{arch}-apple-darwin.zip"
  name "Bitcoin Core"
  desc "Bitcoin client and wallet"
  homepage "https://bitcoincore.org/"

  livecheck do
    url "https://bitcoincore.org/en/download/"
    regex(/href=.*?bitcoin[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}[^"' >]*?[._-]darwin\.zip/i)
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
