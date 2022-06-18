cask "intel-power-gadget" do
  version "3.7.0"
  sha256 "22ed3fe050c3b965841ccc5590a3a03bb9498f8620e01ba4dea5557dcd24fe43"

  url "https://www.intel.com/content/dam/develop/external/us/en/documents/Intel-Power-Gadget-v#{version}.dmg"
  name "Intel Power Gadget"
  desc "Power usage monitoring tool enabled for Intel Core processors"
  homepage "https://www.intel.com/content/www/us/en/developer/articles/tool/power-gadget.html"

  livecheck do
    url :homepage
    regex(/Intel-Power-Gadget[._-]v?(\d+(?:[.-]\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"
  depends_on arch: :x86_64

  pkg "Install Intel Power Gadget.pkg"

  uninstall pkgutil: "com.intel.pkg.PowerGadget.*",
            kext:    "com.intel.driver.EnergyDriver"

  zap trash: [
    "~/Library/Caches/com.intel.PowerGadget",
    "~/Library/Preferences/com.intel.PowerGadget.plist",
  ]
end
