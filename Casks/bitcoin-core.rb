cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "24.1"
  sha256 arm:   "ec88b75c2dd63c0e1bdfe9b85b6876b4191beb21134c91fedcdaab14210ee19a",
         intel: "f64d80534bf48b8b2976ad88ce9deb8f4707ebb4355155154be1d9e8f6480c91"

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
