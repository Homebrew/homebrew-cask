cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "31.0"
  sha256 arm:   "9eaf733893e0d42ffc2c3cceecc343528f18f23b17d8c0a8a07e7730df5225b2",
         intel: "fa4ff40bc447feeb645abb6bd4272412628d9203c8b242e3b2d6b3fce90e07f8"

  url "https://github.com/groestlcoin/groestlcoin/releases/download/v#{version}/groestlcoin-#{version}-#{arch}-apple-darwin-unsigned.zip",
      verified: "github.com/groestlcoin/groestlcoin/"
  name "Groestlcoin Core"
  desc "Groestlcoin client and wallet"
  homepage "https://www.groestlcoin.org/groestlcoin-core-wallet/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :sonoma

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "Groestlcoin-Qt.app", target: "Groestlcoin Core.app"

  preflight_steps do
    set_permissions "Groestlcoin-Qt.app", "0755"
  end

  zap trash: "~/Library/Preferences/org.groestlcoin.Groestlcoin-Qt.plist"
end
