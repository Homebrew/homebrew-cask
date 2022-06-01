cask "groestlcoin-core" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "23.0"

  if Hardware::CPU.intel?
    sha256 "82e6a1862974ca51bd65aeb79f3e5eb5327b5da1f687921e9fb573c83293051c"
  else
    sha256 "7df0f66ee01e0f2e5faade6bd900e4a96f970cc56043a1a428dd9bf34dc5777b"
  end

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
