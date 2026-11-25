cask "pcoipclient" do
  version "26.05.6"
  sha256 "d72125ccf16b170248b190cad6e31ce09ac49db841780cd066d9fe80e0859f04"

  url "https://dl.anyware.hp.com/pcoip-client/raw/names/pcoip-client-dmg/versions/#{version}/pcoip-client_#{version}.dmg"
  name "Teradici PCoIP Software Client for macOS"
  desc "Client for VM agents and remote workstation cards"
  homepage "https://anyware.hp.com/find/product/hp-anyware"

  livecheck do
    url "https://dl.anyware.hp.com/ztqM7i47Dt06ETYM/pcoip-client/raw/names/pcoip-client-info/versions/dmg/pcoip-client-dmg-info.json"
    strategy :json do |json|
      json.first&.dig("currentVersion")
    end
  end

  depends_on macos: :sonoma

  app "PCoIPClient.app"

  uninstall quit: [
    "com.teradici.swiftclient",
    "com.teradici.usb-mediator",
  ]

  zap trash: [
    "~/Library/Preferences/com.teradici.PCoIP Client Connection Info.plist",
    "~/Library/Preferences/com.teradici.pcoipclient.plist",
    "~/Library/Preferences/com.teradici.swiftclient.plist",
    "~/Library/Preferences/com.teradici.Teradici PCoIP Client.plist",
  ]

  caveats do
    license "https://docs.teradici.com/reference/eula/teradici-end-user-license-agreement"
  end
end
