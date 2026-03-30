cask "samsung-magician" do
  version "9.0.1.950"
  sha256 "26c40063b1c30220dbd28e2d54db483521b43ad117471a6e013736a0715b810c"

  url "https://download.semiconductor.samsung.com/resources/software-resources/Samsung_Magician_Installer_Official_#{version}.pkg"
  name "Samsung Magician Software"
  desc "Manage Samsung internal and portable SSDs, memory cards, and USB flash drives"
  homepage "https://semiconductor.samsung.com/consumer-storage/support/tools/"

  livecheck do
    url :homepage
    regex(/href=.*?Samsung_Magician_Installer_Official[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
  end

  auto_updates true

  installer manual: "Samsung_Magician_Installer_Official_#{version}.pkg"

  uninstall launchctl: "com.samsung.magiciansvc",
            quit:      "/Applications/SamsungMagician.app",
            kext:      [
              "com.samsung.magicianpssd.driver",
              "com.samsung.magicianpssd.driverX",
            ],
            pkgutil:   [
              "com.samsung.magician.softwarepkg",
              "com.samsung.magician.svc",
              "com.samsung.magicianpssd.driverpkg",
              "com.samsung.magicianpssd.driverXpkg",
              "com.samsung.magicianpssduniversal.driverpkg",
              "com.samsung.magicianpssduniversal.driverXpkg",
              "com.samsung.portablessdplusuniversal.softwarepkg",
            ],
            delete:    [
              "/Library/Extensions/SamsungMagicianPSSDDriver.kext",
              "/Library/Extensions/SamsungMagicianPSSDDriverX.kext",
            ]

  zap trash: [
    "~/Library/Application Support/Samsung Magician",
    "~/Library/Application Support/Samsung/Samsung Magician",
    "~/Library/LaunchAgents/com.samsung.magicianapp.plist",
    "~/Library/LaunchAgents/com.samsung.magiciansvc.plist",
    "~/Library/Saved Application State/com.samsung.magician.*",
  ]

  caveats do
    reboot
    kext
  end
end
