cask "lynx" do
  version "7.3.7.0"
  sha256 :no_check

  url "https://download.saharasupport.com/lynx7/production/macx/Lynx7-install.dmg",
      verified: "download.saharasupport.com"
  name "LYNX Whiteboard by Clevertouch"
  desc "Cross platform presentation and productivity App"
  homepage "https://www.lynxcloud.app/"

  livecheck do
    url "https://downloads.saharasupport.com/lynx7/production/macx/version.txt"
    regex(/(\d+(?:[._-]\d+)+)/)
  end

  auto_updates true

  pkg "Lynx7.pkg"

  uninstall pkgutil: [
    "uk.co.cleverproducts.lynx",
    "com.clevertouch.lynx",
  ]
end
