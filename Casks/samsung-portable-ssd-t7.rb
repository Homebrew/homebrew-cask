cask "samsung-portable-ssd-t7" do
  version "1.7.4"
  sha256 :no_check

  url "https://semiconductor.samsung.com/resources/software-resources/SamsungPortableSSD_Setup_Mac_1.0.zip"
  name "Samsung Portable SSD Software for T7"
  desc "Software for Samsung external storage drives (T7 series)"
  homepage "https://www.samsung.com/semiconductor/minisite/ssd/download/portable/"

  auto_updates true

  pkg "SamsungPortableSSD_Setup_Mac_1.0.pkg"

  uninstall quit:      [
              "com.samsung.portablessdplus.software",
              "/Applications/SamsungPortableSSD_1.0.app",
            ],
            launchctl: [
              "com.samsung.portablessdplus.mon",
            ],
            kext:      [
              "com.samsung.portablessd.driver",
            ],
            pkgutil:   [
              "com.samsung.portablessdplusuniversal.softwarepkg",
              "com.samsung.portablessd.driverpkg",
              "com.samsung.portablessdplus.softwarepkg",
            ],
            delete:    [
              "/Applications/SamsungPortableSSD_1.0.app",
              "/Library/Extensions/SamsungPortableSSDDriver*.kext",
            ]

  zap trash: [
    "~/Library/Application Support/PortableSSD",
    "~/Library/Application Support/Portable_SSD",
    "~/Library/LaunchAgents/com.samsung.portablessdplus.mon.plist",
    "~/Library/Saved Application State/com.samsung.portablessd*",
  ]

  caveats do
    reboot
    kext
  end
end
