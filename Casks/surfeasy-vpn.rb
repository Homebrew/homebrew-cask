cask "surfeasy-vpn" do
  version "3.14.78"
  sha256 :no_check

  url "https://updates.surfeasy.com/downloads/se0212/SurfEasyVPN-Installer.dmg"
  name "SurfEasy VPN"
  desc "VPN client"
  homepage "https://www.surfeasy.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "SurfEasy VPN.app"
end
