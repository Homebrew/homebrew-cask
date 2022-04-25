cask "bitcoin-core" do
  version "23.0"
  sha256 "52eefbaf8cfd292822e470a48a51e1eb51081d43a0a16db7441f34a017ff6097"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-x86_64-apple-darwin.dmg"
  name "Bitcoin Core"
  desc "Bitcoin client and wallet"
  homepage "https://bitcoincore.org/"

  livecheck do
    url "https://github.com/bitcoin/bitcoin"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist"
end
