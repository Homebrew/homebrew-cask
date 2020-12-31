cask "lynx" do
  version "6.6.6"
  sha256 :no_check

  url "https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg"
  appcast "https://downloads.saharasupport.com/lynx/production/macx/version.txt"
  name "Lynx by Clevertouch"
  homepage "https://download.saharasupport.com/"

  auto_updates true

  pkg "Lynx.pkg"

  uninstall pkgutil: "uk.co.cleverproducts.lynx"
end
