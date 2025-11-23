cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "30.0"
  sha256 arm:   "f6e2d885027e25500c8b16406c95b0fb7e536a4e2bbaae2cf8b48a476a60abe1",
         intel: "0eb10b714a4f5a0f7c40a9533d0bda141c739e7930c814e392baa99b3bf24790"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-#{arch}-apple-darwin.zip"
  name "Bitcoin Core"
  desc "Bitcoin client and wallet"
  homepage "https://bitcoincore.org/"

  # The first-party website can be slow to update when a new release is made.
  # New versions appear to be announced in GitHub releases first and the
  # release body contains a link to the download files on the first-party
  # website, so we check the latest release on GitHub for now.
  livecheck do
    url "https://github.com/bitcoin/bitcoin"
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

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
