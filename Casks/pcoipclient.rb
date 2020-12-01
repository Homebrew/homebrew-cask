cask "pcoipclient" do
  version "20.10.1"
  sha256 "2d1053c6dc0aee0336338cf3365e3e2381302a681f2e3fd0f859d415d463b2f9"

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
