cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "25.0"
  sha256 arm:   "b2af74c8c8068f23b1a44facd100f99b45542260b88267b04aaa9df751db314f",
         intel: "2e8bbf60a10668e284d6f54b934cae62dedac993f926923a3fa630d5450b6656"

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
