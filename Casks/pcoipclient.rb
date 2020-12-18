cask "pcoipclient" do
  version "20.10.2"
  sha256 "b03b7a4358427011d5bdfa940c8ebe74a9115246e2dfd9667538ea6bf6c5c25d"

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
