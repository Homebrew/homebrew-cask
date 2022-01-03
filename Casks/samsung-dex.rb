cask "samsung-dex" do
  version "20211210154322368"
  sha256 "6bf45739e81ad7970ae86147b64bc1df3392154b00672243fb666c62c983a9f6"

  url "https://downloadcenter.samsung.com/content/SW/#{version[0..5]}/#{version}/SamsungDeXSetupMac.dmg"
  name "Samsung DeX"
  desc "Extend some Samsung devices into a desktop-like experience"
  homepage "https://www.samsung.com/us/explore/dex/"

  livecheck do
    url "https://org.downloadcenter.samsung.com/downloadfile/ContentsFile.aspx?CDSite=COMMON&CttFileID=8385137"
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
    discontinued
    kext
    reboot
  end
end
