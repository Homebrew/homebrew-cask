cask "pcoipclient" do
  version "22.09.1"
  sha256 "bb8d33662ee1bb875886bd1b1f4586a24184cc1f2f922cf6e63d46dafccc1d8c"

  url "https://dl.teradici.com/DeAdBCiUYInHcSTy/pcoip-client/raw/names/pcoip-client-dmg/versions/#{version}/pcoip-client_#{version}.dmg"
  name "Teradici PCoIP Software Client for macOS"
  desc "Client for VM agents and remote workstation cards"
  homepage "https://docs.teradici.com/find/product/software-and-mobile-clients/"

  livecheck do
    url "https://dl.teradici.com/DeAdBCiUYInHcSTy/pcoip-client/raw/names/pcoip-client-dmg/versions/latest/pcoip-client_latest.dmg"
    strategy :header_match
  end

  app "PCoIPClient.app"

  uninstall quit: [
    "com.teradici.swiftclient",
    "com.teradici.usb-mediator",
  ]

  zap trash: [
    "~/Library/Preferences/com.teradici.PCoIP Client Connection Info.plist",
    "~/Library/Preferences/com.teradici.swiftclient.plist",
    "~/Library/Preferences/com.teradici.Teradici PCoIP Client.plist",
  ]

  caveats do
    license "https://docs.teradici.com/reference/eula/teradici-end-user-license-agreement"
  end
end
