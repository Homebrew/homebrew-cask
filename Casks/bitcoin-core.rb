cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "24.0"
  sha256 arm:   "bbb2feab567dbb4b11c9d783921bf97c5151530c0eef4fcbc6d515de51fd3891",
         intel: "44a9d6581ec406bf84b408c86da71f0b6923255dd7785341e8997ab0d4557996"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-#{arch}-apple-darwin.dmg"
  name "Bitcoin Core"
  desc "Bitcoin client and wallet"
  homepage "https://bitcoincore.org/"

  livecheck do
    url "https://github.com/bitcoin/bitcoin"
    strategy :github_latest
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist"
end
