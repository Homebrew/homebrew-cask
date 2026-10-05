cask "pcoipclient" do
  version "26.05.5"
  sha256 "b27ab94ec26c3bb54f48caf1e695264ce80a042f0c7b75b9cd06b4d21feb7bad"

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
    "~/Library/Preferences/com.teradici.swiftclient.plist",
    "~/Library/Preferences/com.teradici.Teradici PCoIP Client.plist",
  ]

  caveats do
    license "https://docs.teradici.com/reference/eula/teradici-end-user-license-agreement"
  end
end
