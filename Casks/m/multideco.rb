cask "multideco" do
  version "4.22.0"
  sha256 "8f7a938eeec2da4a1a772c030241343521b27ab1b0804f7774290cbad538a9c3"

  url "https://www.hhssoftware.com/multideco/installfile.php?file=multideco_#{version}_arm_intel.dmg&keytag=1608834&qwerty=#{Time.now.to_i}&os=mac_intel",
      verified: "www.hhssoftware.com"
  name "MultiDeco"
  desc "Dive decompression planning software"
  homepage "https://www.hhssoftware.com/multideco/"

  auto_updates true
  
  pkg "MultiDeco_arm_intel.pkg"

  uninstall quit:    "com.hhssoftware.pkg.MultiDeco",
            pkgutil: "com.hhssoftware.pkg.MultiDeco"

  zap trash: [
    "~/Library/Preferences/com.hhssoftware.multideco.plist",
    "~/Library/Saved Application State/com.hhssoftware.multideco.savedState"
  ]
end
