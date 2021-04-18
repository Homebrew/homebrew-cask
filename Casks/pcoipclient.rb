cask "pcoipclient" do
  version "21.03.0"
  sha256 "4dd5b21afccf49778b551c6b6cbf155d92b9905a0b951d86c7b4205c89cdb182"

  url "https://downloads.teradici.com/mac/stable/pcoip-client_#{version}.dmg"
  name "Teradici PCoIP Software Client for macOS"
  desc "Client for VM agents and remote workstation cards"
  homepage "https://docs.teradici.com/find/product/software-and-mobile-clients/"

  livecheck do
    url "https://downloads.teradici.com/mac/stable/"
    strategy :page_match
    regex(/href=.*?pcoip-client_(\d+(?:\.\d+)*)\.dmg/i)
  end

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
