cask "bitcoin-core" do
  version "0.20.1"
  sha256 "c378d4e21109f09e8829f3591e015c66632dff2925a60b64d259be05a334c30b"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  appcast "https://github.com/bitcoin/bitcoin/releases.atom"
  name "Bitcoin Core"
  homepage "https://bitcoincore.org/"

  conflicts_with cask: "bitcoin-xt"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist"
end
