cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "26.0"
  sha256 arm:   "a1dcff5f28e9b79571f250571b47d539c3c3072b19a91daefae575c1ff29f73e",
         intel: "dd5ee6049402ce4b4c7cb495e4ac3b05b993e1f8a7ba5e7bbcaa684851ee3009"

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
