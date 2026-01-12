cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "30.2"
  sha256 arm:   "4b8dbdb054f11a30bebbe796dd8f0bda4be2fd5b33b5d2d217c50577208b6a8a",
         intel: "68f4fe0f64576833b50a54e2b4cd9d0538c8618f95d44017eeb4b0940be21118"

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
