cask "bitcoin-core" do
  version "22.0"
  sha256 "3b3e2680f7d9304c13bfebaf6445ada40d72324b4b3e0a07de9db807389a6c5b"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx-signed.dmg"
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
