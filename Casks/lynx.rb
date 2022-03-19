cask "lynx" do
  version "7.5.2.0"
  sha256 :no_check

  url "https://download.saharasupport.com/lynx#{version.major}/production/macx/Lynx#{version.major}-install.dmg",
      verified: "download.saharasupport.com"
  name "LYNX Whiteboard by Clevertouch"
  desc "Cross platform presentation and productivity app"
  homepage "https://www.lynxcloud.app/"

  livecheck do
    url "https://downloads.saharasupport.com/lynx#{version.major}/production/macx/version.txt"
    regex(/(\d+(?:[._-]\d+)+)/)
  end

  auto_updates true

  pkg "Lynx#{version.major}.pkg"

  uninstall pkgutil: [
    "com.clevertouch.lynx",
    "uk.co.cleverproducts.lynx",
  ]
end
