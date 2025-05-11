cask "electrum-grs" do
  version "4.5.4"
  sha256 "87fd71fe9cf8e2f185664778fd0106056c34a5c545d40b50322b91c705702cd1"

  url "https://github.com/groestlcoin/electrum-grs/releases/download/v#{version}/electrum-grs-#{version}.dmg",
      verified: "github.com/groestlcoin/electrum-grs/"
  name "Electrum-GRS"
  desc "Groestlcoin thin client"
  homepage "https://www.groestlcoin.org/groestlcoin-electrum-wallet/"

  livecheck do
    url "https://groestlcoin.org/version"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :high_sierra"

  app "Electrum-GRS.app"

  zap trash: [
    "~/.electrum-grs",
    "~/Library/Preferences/Electrum-GRS.plist",
    "~/Library/Preferences/org.org.pythonmac.unspecified.Electrum-GRS.plist",
    "~/Library/Saved Application State/Electrum-GRS.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
