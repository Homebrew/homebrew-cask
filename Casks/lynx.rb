cask "lynx" do
  version "6.6.5.0"
  sha256 "8daebc2dfaddda48b6f27f3d10a7fe0bd4cf66d05ff962a148deb2c8e8be5048"

  url "https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg"
  appcast "https://downloads.saharasupport.com/lynx/production/macx/version.txt"
  name "Lynx by Clevertouch"
  homepage "https://download.saharasupport.com/"

  auto_updates true

  pkg "Lynx.pkg"

  uninstall pkgutil: "uk.co.cleverproducts.lynx"
end
