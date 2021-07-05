cask "lynx" do
  version "6.6.6.0"
  sha256 :no_check

  url "https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg"
  name "Lynx by Clevertouch"
  desc "Clevertouch software installer"
  homepage "https://download.saharasupport.com/"

  livecheck do
    url "https://downloads.saharasupport.com/lynx/production/macx/version.txt"
    regex(/(\d+(?:[._-]\d+)+)/)
  end

  auto_updates true

  pkg "Lynx.pkg"

  uninstall pkgutil: "uk.co.cleverproducts.lynx"
end
