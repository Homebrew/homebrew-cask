cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "32.1"
  sha256 arm:   "6fb94e4d2254bf45f0f58a6679c10f16206c5e885be8541fd974d395fe49d46c",
         intel: "c23e112cfce25918789cfb639b49d896c2d6ab450c226b55f981222ef9744d52"

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

  depends_on macos: :sonoma

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight_steps do
    set_permissions "Bitcoin-Qt.app", "0755"
  end

  uninstall quit: "org.bitcoinfoundation.Bitcoin-Qt"

  # Don't trash directory "~/Library/Application Support/Bitcoin" because it can contain bitcoin wallets
  zap trash: [
    "~/Library/Application Support/Bitcoin/blocks",
    "~/Library/Application Support/Bitcoin/chainstate",
    "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist",
    "~/Library/Preferences/org.bitcoinfoundation.Bitcoin-Qt.plist",
    "~/Library/Saved Application State/org.bitcoinfoundation.Bitcoin-Qt.savedState",
  ]
end
