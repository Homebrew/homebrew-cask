cask "groestlcoin-core" do
  version "22.0"
  sha256 "f737c9b9be23adcb2350890e46d7436d61d783944a83241b50467ba098f718d5"

  url "https://github.com/groestlcoin/groestlcoin/releases/download/v#{version}/groestlcoin-#{version}-osx-signed.dmg",
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
