cask "samsung-dex" do
  version "20210112132845263"
  sha256 "cd9540ea8b1595399b5d99b0ba0d549d0ec1dcbba4dcf4cf006e3f795e0b9cb0"

  url "https://downloadcenter.samsung.com/content/SW/#{version[0..5]}/#{version}/SamsungDeXSetupMac.dmg"
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
