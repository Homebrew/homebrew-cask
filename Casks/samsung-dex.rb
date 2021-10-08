cask "samsung-dex" do
  version "20210720162553369"
  sha256 "2e45b967a25f5ad04a401a88a4b35e837123c6b9323f6c7c3d6ba0755f4397a6"

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
