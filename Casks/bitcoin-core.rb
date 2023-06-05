cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "25.0"
  sha256 arm:   "b4dfca3fa2824fd344393659e43541cc27029f455a245ad816f467cb72b29973",
         intel: "277c436d3119d7f9a3fa0e580d444a28887d9e097fdb2578609db9e050f4f5d7"

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
