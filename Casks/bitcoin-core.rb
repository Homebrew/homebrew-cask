cask "bitcoin-core" do
  version "0.21.0"
  sha256 "6223fd23d07133a6bfa2aa3d2554a09dc1d790d28ce67b0085d3fdcc1c126e05"

  url "https://bitcoincore.org/bin/bitcoin-core-#{version}/bitcoin-#{version}-osx.dmg"
  appcast "https://github.com/bitcoin/bitcoin/releases.atom"
  name "Bitcoin Core"
  homepage "https://bitcoincore.org/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Bitcoin-Qt.app", target: "Bitcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Bitcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.bitcoin.Bitcoin-Qt.plist"
end
