cask "surfeasy-vpn" do
  version "3.14.78"
  sha256 :no_check

  url "https://updates.surfeasy.com/downloads/se0212/SurfEasyVPN-Installer.dmg"
  name "SurfEasy VPN"
  desc "VPN client"
  homepage "https://www.surfeasy.com/"

  deprecate! date: "2024-12-30", because: :discontinued

  app "SurfEasy VPN.app"

  caveats do
    requires_rosetta
  end
end
