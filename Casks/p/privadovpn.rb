cask "privadovpn" do
  version "3.11.0"
  sha256 :no_check

  url "https://privadovpn.com/apps/osx/PrivadoVPN.dmg"
  name "PrivadoVPN"
  desc "VPN client"
  homepage "https://privadovpn.com/"

  livecheck do
    url "https://blog.privadovpn.com/privadovpn-macos-app-version-log/"
    regex(/macOS\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  app "PrivadoVPN.app"

  zap trash: [
    "~/Documents/PrivadoVPN",
    "~/Library/Application Support/PrivadoVPN",
    "~/Library/Caches/PrivadoVPN",
  ]
end
