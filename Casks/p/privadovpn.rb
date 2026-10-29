cask "privadovpn" do
  version "4.3.0"
  sha256 :no_check

  url "https://privadovpn.com/apps/osx/PrivadoVPN.dmg"
  name "PrivadoVPN"
  desc "VPN client"
  homepage "https://privadovpn.com/"

  livecheck do
    url "https://blog.privadovpn.com/privadovpn-macos-app-version-log/"
    regex(/macOS\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos

  app "PrivadoVPN.app"

  uninstall quit: "io.privado.main"

  zap trash: [
    "~/Documents/PrivadoVPN",
    "~/Library/Application Scripts/4D7YV49724.io.privado.main.tunnel",
    "~/Library/Application Scripts/io.privado.main.widget",
    "~/Library/Application Support/PrivadoVPN",
    "~/Library/Caches/io.privado.main",
    "~/Library/Caches/PrivadoVPN",
    "~/Library/Containers/io.privado.main.widget",
    "~/Library/Group Containers/4D7YV49724.io.privado.main.tunnel",
    "~/Library/HTTPStorages/io.privado.main",
    "~/Library/Logs/PrivadoVPN",
    "~/Library/Preferences/io.privado.main.plist",
  ]
end
