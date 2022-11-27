cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "24.0"
  sha256 arm:   "4bbb9b3c73d383ed129f5662f8bb879f3da7f3ffc657afe86f75d29e6d20fee3",
         intel: "0e7c264732b2d44d946b5267f36d8d3c3952821dcb8676c624b30aacdc687214"

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
