cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "27.0"
  sha256 arm:   "3a16747d8db9fa0d60f3f60156fd264d4e4e338159de8371171de3db7225656a",
         intel: "8993244279176f52a3c7ddd40cd059c456d95440c5c091d639057acc5cc62a03"

  url "https://github.com/groestlcoin/groestlcoin/releases/download/v#{version}/groestlcoin-#{version}-#{arch}-apple-darwin.zip",
      verified: "github.com/groestlcoin/groestlcoin/"
  name "Groestlcoin Core"
  desc "Groestlcoin client and wallet"
  homepage "https://www.groestlcoin.org/groestlcoin-core-wallet/"

  depends_on macos: ">= :big_sur"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Groestlcoin-Qt.app", target: "Groestlcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Groestlcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.groestlcoin.Groestlcoin-Qt.plist"
end
