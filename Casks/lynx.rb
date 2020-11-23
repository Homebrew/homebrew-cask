cask "lynx" do
  version "6.6.6.0"
  sha256 "5af337fa7c3b353ff2df813c00cbb52bedf283385c7b347c5c777676355c0432"

  url "https://download.saharasupport.com/lynx/production/macx/Lynx-install.dmg"
  appcast "https://downloads.saharasupport.com/lynx/production/macx/version.txt"
  name "Lynx by Clevertouch"
  homepage "https://download.saharasupport.com/"

  auto_updates true

  pkg "Lynx.pkg"

  uninstall pkgutil: "uk.co.cleverproducts.lynx"
end
