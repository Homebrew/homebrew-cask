cask "electrum-grs" do
  version "4.3.1"
  sha256 "f82fd47e938407f734551bdfee517f108056e2f705159ad5714e0dc33e73c873"

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
