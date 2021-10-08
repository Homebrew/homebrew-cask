cask "samsung-dex" do
  version "20210720162553369"
  sha256 "5110f7be08f6d43d9cd1229dbbe33bbd34e35da13a5c6ce7e724ac7904dfbeba"

  url "https://downloadcenter.samsung.com/content/SW/#{version[0..5]}/#{version}/SamsungDeXSetup.dmg"
  name "Samsung DeX"
  desc "Extend some Samsung devices into a desktop-like experience"
  homepage "https://www.samsung.com/us/explore/dex/"

  livecheck do
    url "https://www.samsung.com/global/download/SamsungDeXMac"
    strategy :header_match
    regex(%r{(\d+)/SamsungDeXSetupMac\.dmg}i)
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
