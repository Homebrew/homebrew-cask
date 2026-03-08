cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "30.2"
  sha256 arm:   "6d744a9c2fb98a15ad538598269d197778e5cdbc190b4aaebc16fe88f7647823",
         intel: "6abf28e5466c6e3a3ebf71f2d275aab045962f249a9b2b38fde787bbe30c090f"

  url "https://github.com/groestlcoin/groestlcoin/releases/download/v#{version}/groestlcoin-#{version}-#{arch}-apple-darwin-unsigned.zip",
      verified: "github.com/groestlcoin/groestlcoin/"
  name "Groestlcoin Core"
  desc "Groestlcoin client and wallet"
  homepage "https://www.groestlcoin.org/groestlcoin-core-wallet/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :ventura"

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Groestlcoin-Qt.app", target: "Groestlcoin Core.app"

  preflight do
    set_permissions "#{staged_path}/Groestlcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.groestlcoin.Groestlcoin-Qt.plist"
end
