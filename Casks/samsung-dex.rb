cask "samsung-dex" do
  version "20211108133743295"
  sha256 "88279231aabd632dc196f6b1da191a830416ccd6498d59eb7f1d431f6fbebac6"

  url "https://downloadcenter.samsung.com/content/SW/#{version[0..5]}/#{version}/SamsungDeXSetup.dmg"
  name "Samsung DeX"
  desc "Extend some Samsung devices into a desktop-like experience"
  homepage "https://www.samsung.com/us/explore/dex/"

  livecheck do
    url "https://www.samsung.com/global/download/SamsungDeXMac"
    strategy :header_match
    regex(%r{(\d+)/SamsungDeXSetup\.dmg}i)
  end

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
