cask "groestlcoin-core" do
  arch arm: "arm64", intel: "x86_64"

  version "28.0"
  sha256 arm:   "9adb4bf7a5f60d8f73c5b9023b2aa5e24f42dd9d6774c3b0ba64fd486db8908e",
         intel: "e3d0a45af83d2ec5350112f5994f821ce4142ccac9c945f739c937e4b4e9d834"

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
