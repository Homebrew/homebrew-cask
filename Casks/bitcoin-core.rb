cask "bitcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "24.0.1"
  sha256 arm:   "4cc2fe2e2f5e6068ecbf922564f2356a5388e4d00d8f852062f589b9577a21de",
         intel: "0c3359c6700b30d0973cb6baa3dd93933e772ab56ed5eebcf509249d6c9f8b34"

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
