cask "bluewallet" do
  version "6.0.2"
  sha256 "46bf492bb396216fe612d8ef11c4c0a3222d77e8caf494bbc448dd497f3de162"

  url "https://github.com/BlueWallet/BlueWallet/releases/download/v#{version}/BlueWallet.#{version}.dmg",
      verified: "github.com/BlueWallet/BlueWallet/"
  appcast "https://github.com/BlueWallet/BlueWallet/releases.atom"
  name "BlueWallet"
  desc "Bitcoin wallet and Lightning wallet"
  homepage "https://bluewallet.io/"

  app "BlueWallet.app"

  zap trash: [
    "~/Library/Application Scripts/io.bluewallet.bluewallet",
    "~/Library/Containers/io.bluewallet.bluewallet",
    "~/Library/Group Containers/group.io.bluewallet.bluewallet",
  ]
end
