cask "samsung-dex" do
  version "2.0.0.11"
  sha256 :no_check

  url "https://downloadcenter.samsung.com/content/SW/202101/20210112132845263/SamsungDeXSetupMac.dmg"
  name "Samsung DeX"
  desc "Extend some Samsung devices into a desktop-like experience"
  homepage "https://www.samsung.com/us/explore/dex/"

  pkg "Install Samsung DeX.pkg"

  uninstall pkgutil: [
    "com.samsung.pkg.dexonpc",
    "com.samsung.pkg.mss_connectivity2",
    "com.samsung.pkg.ssud",
  ]

  caveats do
    kext
    reboot
  end
end
