cask "privadovpn" do
  version "2.1.2,426689335"
  sha256 :no_check

  url "https://privadovpn.com/apps/osx/PrivadoVPN.dmg"
  name "PrivadoVPN"
  desc "VPN client"
  homepage "https://privadovpn.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "PrivadoVPN.app"

  zap trash: [
    "~/Documents/PrivadoVPN",
    "~/Library/Application Support/PrivadoVPN",
    "~/Library/Caches/PrivadoVPN",
  ]
end
