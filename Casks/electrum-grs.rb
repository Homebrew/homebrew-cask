cask "electrum-grs" do
  version "4.2.0"
  sha256 "68bbc3c9d1f7b345d808629e9f486e0da82daae36aed48c3a45f296d69916fb9"

  url "https://github.com/groestlcoin/electrum-grs/releases/download/v#{version}/electrum-grs-#{version}.dmg",
      verified: "github.com/groestlcoin/electrum-grs/"
  name "Electrum-GRS"
  desc "Groestlcoin thin client"
  homepage "https://www.groestlcoin.org/groestlcoin-electrum-wallet/"

  depends_on macos: ">= :high_sierra"

  app "Electrum-GRS.app"

  zap trash: [
    "~/.electrum-grs",
    "~/Library/Preferences/Electrum-GRS.plist",
    "~/Library/Preferences/org.org.pythonmac.unspecified.Electrum-GRS.plist",
    "~/Library/Saved Application State/Electrum-GRS.savedState",
  ]
end
