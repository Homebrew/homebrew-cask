cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "30.1"
  sha256 arm:   "8e47679f1ce7c906a4a0f25fa0a8420202c8b7a9c88eecb874913ad2aca21df6",
         intel: "1b1a5d8e3e84e2a62954bf9c90987e2575f12e4a099528ab0c5e0d491f3378bf"

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
