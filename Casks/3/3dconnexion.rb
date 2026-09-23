cask "3dconnexion" do
  version "10.8.13,3908,A881DAA9"
  sha256 "8bda8874883bfe3f779d0f3bae6599a6821fbc8bf70af5ef73e1beee305a5ea2"

  url "https://download.3dconnexion.com/drivers/mac/#{version.csv.first.dots_to_hyphens}_#{version.csv.third}/3DxWareMac_v#{version.csv.first.dots_to_hyphens}_r#{version.csv.second}.dmg"
  name "3Dconnexion"
  desc "Drivers for 3Dconnexion devices"
  homepage "https://3dconnexion.com/us/drivers/"

  livecheck do
    skip "Vendor blocks automated requests"
  end

  depends_on macos: :monterey

  pkg "Install 3Dconnexion software.pkg"

  uninstall script: "/Applications/3DconnexionUninstaller.app/Contents/MacOS/3DconnexionUninstaller"

  zap trash: "~/Library/Preferences/3Dconnexion"

  caveats do
    reboot
  end
end
