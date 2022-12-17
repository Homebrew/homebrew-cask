cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "24.0.1"
  sha256 arm:   "bcd3794f5cdc13f0689e24b6d85f085c9f06cb6f7aa2f2d4d088cba516734a33",
         intel: "ad1d11a9ca0f8bd82d3536fb808905d1e25ef74cebebeee935c8eca3612daa03"

  url "https://github.com/groestlcoin/groestlcoin/releases/download/v#{version}/groestlcoin-#{version}-#{arch}-apple-darwin.dmg",
      verified: "github.com/groestlcoin/groestlcoin/"
  name "Groestlcoin Core"
  desc "Groestlcoin client and wallet"
  homepage "https://www.groestlcoin.org/groestlcoin-core-wallet/"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Groestlcoin-Qt.app", target: "Groestlcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Groestlcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.groestlcoin.Groestlcoin-Qt.plist"
end
