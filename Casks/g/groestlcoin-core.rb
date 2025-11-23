cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "29.0"
  sha256 arm:   "381446d49527fe2291498a01773ab44615bb970e0e7ea3bd8e14e0458f02e072",
         intel: "2195198790178321d3f0233e4ad7439c6f387f0e5d5f6e6c80ed338a54df2014"

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
