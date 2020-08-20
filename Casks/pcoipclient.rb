cask "pcoipclient" do
  version "20.07.2"
  sha256 "70a2cbb8e329cb459ff076ed754e44d1f168d291714bd4f4c5efebb87902959d"

  url "https://downloads.teradici.com/mac/stable/pcoip-client_#{version}.dmg"
  appcast "https://downloads.teradici.com/mac/stable/"
  name "Teradici PCoIP Software Client for macOS"
  desc "PCoIP client for VM Agents and Remote Workstation Cards"
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
