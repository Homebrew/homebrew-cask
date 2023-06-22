cask "electrum-grs" do
  version "4.4.4"
  sha256 "d3f912d12b6468bdebcd63353d785cabd5efe19a36627439fac05f67e0fe37f9"

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
