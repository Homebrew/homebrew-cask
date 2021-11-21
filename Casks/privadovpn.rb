cask "privadovpn" do
  version :latest
  sha256 :no_check

  url "https://privadovpn.com/apps/osx/PrivadoVPN.dmg"
  name "privadovpn"
  desc "VPN client"
  homepage "https://privadovpn.com/"

  app "PrivadoVPN.app"

  zap trash: [
    "~/Documents/PrivadoVPN",
    "~/Library/Application Support/PrivadoVPN",
    "~/Library/Caches/PrivadoVPN",
  ]
end
