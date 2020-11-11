cask "pcoipclient" do
  version "20.10.0"
  sha256 "632d6323558611b3141432bebca84e8d208034853e2e9df53dd6af29170da52a"

  url "https://downloads.teradici.com/mac/stable/pcoip-client_#{version}.dmg"
  appcast "https://downloads.teradici.com/mac/stable/"
  name "Teradici PCoIP Software Client for macOS"
  desc "Client for VM agents and remote workstation cards"
  homepage "https://docs.teradici.com/find/product/software-and-mobile-clients/"

  app "PCoIPClient.app"

  uninstall quit: [
    "com.teradici.swiftclient",
    "com.teradici.usb-mediator",
  ]

  zap trash: [
    "~/Library/Preferences/com.teradici.swiftclient.plist",
    "~/Library/Preferences/com.teradici.Teradici PCoIP Client.plist",
    "~/Library/Preferences/com.teradici.PCoIP Client Connection Info.plist",
  ]
end
