cask "eagle" do
  version "9.6.2"
  sha256 "bda7c9a5cc0bb8ae0489ca2d2772e5dd869f466fdd56454d94144e34887d9712"

  url "https://trial2.autodesk.com/NET17SWDLD/2017/EGLPRM/ESD/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  name "Autodesk EAGLE"
  desc "Electronic design automation software"
  homepage "https://www.autodesk.com/products/eagle/overview"

  livecheck do
    url "https://www.autodesk.com/eagle-download-mac"
    strategy :header_match
  end

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: "com.Autodesk.eagle"

  zap trash: [
    "~/Library/Application Support/Eagle",
    "~/Library/Preferences/com.autodesk.EAGLE #{version}.plist",
    "~/Library/Preferences/com.autodesk.eagle.plist",
    "~/Library/Saved Application State/com.Autodesk.eagle.savedState",
  ]
end
