cask "bluewallet" do
  version "6.5.0"
  sha256 "2a54242d0710334c024529ab846b4a4230076abcf864fb904cf5cf787b598968"

  url "https://github.com/BlueWallet/BlueWallet/releases/download/v#{version}/BlueWallet.#{version}.dmg",
      verified: "github.com/BlueWallet/BlueWallet/"
  name "BlueWallet"
  desc "Bitcoin wallet and Lightning wallet"
  homepage "https://bluewallet.io/"

  depends_on macos: ">= :big_sur"

  app "BlueWallet.app"

  zap trash: [
    "~/Library/Application Scripts/io.bluewallet.bluewallet",
    "~/Library/Containers/io.bluewallet.bluewallet",
    "~/Library/Group Containers/group.io.bluewallet.bluewallet",
  ]
end
