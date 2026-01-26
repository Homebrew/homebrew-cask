cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "30.1"
  sha256 arm:   "311d22f17bba25fb624e9d11f98e92b3ea038e3ebfe5610bacf15ef024073fc2",
         intel: "5210639970c2e4072bc56368a18408f0c9bff3f0ef9b757554bee4c0bae2e619"

  url "https://github.com/groestlcoin/groestlcoin/releases/download/v#{version}/groestlcoin-#{version}-#{arch}-apple-darwin.zip",
      verified: "github.com/groestlcoin/groestlcoin/"
  name "Groestlcoin Core"
  desc "Groestlcoin client and wallet"
  homepage "https://www.groestlcoin.org/groestlcoin-core-wallet/"

  depends_on macos: ">= :ventura"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Groestlcoin-Qt.app", target: "Groestlcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Groestlcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.groestlcoin.Groestlcoin-Qt.plist"
end
