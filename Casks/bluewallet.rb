cask "bluewallet" do
  version "6.0.5"
  sha256 "fd69598a2411836e8f9ccaac2d7048891f6b6dda42e5ee81c42ce31f59033c8b"

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
