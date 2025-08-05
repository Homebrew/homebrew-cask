cask "grs-bluewallet" do
  version "6.4.5"
  sha256 "adc4cbcd4bdbaf6dce36c701fb278ae52cd72b29b10d38aaf1a5d18719016496"

  url "https://github.com/Groestlcoin/BlueWallet/releases/download/v#{version}/GRS.BlueWallet.dmg",
      verified: "github.com/Groestlcoin/BlueWallet/"
  name "GRS BlueWallet"
  desc "Groestlcoin wallet and Lightning wallet"
  homepage "https://www.groestlcoin.org/grs-bluewallet/"

  depends_on macos: ">= :catalina"

  app "GRS BlueWallet.app"

  zap trash: [
    "~/Library/Application Scripts/org.groestlcoin.bluewallet123",
    "~/Library/Containers/org.groestlcoin.bluewallet123",
    "~/Library/Group Containers/group.org.groestlcoin.bluewallet123",
  ]
end
