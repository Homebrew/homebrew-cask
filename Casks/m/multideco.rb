cask "multideco" do
  version "4.22.0"
  sha256 "51a5a7551ffd054cf034e37fa0e53bd322703625b553f5abcde0967f6ca91562"

  url "https://www.hhssoftware.com/multideco/installfile.php?file=multideco_4.22.0_arm_intel.dmg&keytag=1608834&qwerty=17296\
25551&os=mac_intel",
      verified: "hhssoftware.com"
  name "MultiDeco"
  desc "Dive decompression planning software"
  homepage "https://www.hhssoftware.com/multideco/"

  # Instead of 'pkg', use the installer method with 'manual'
  # installer manual: "MultiDeco_arm_intel.pkg"
  pkg "MultiDeco_arm_intel.pkg"

  uninstall pkgutil: "com.hhssoftware.pkg.MultiDeco"

  zap trash: [
    "~/Library/Saved Application State/com.hhssoftware.multideco.savedState",
    "~/Library/Preferences/com.hhssoftware.multideco.plist",
  ]
end
