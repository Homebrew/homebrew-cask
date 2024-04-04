cask "samsung-magician" do
  version "8.1.0.800"
  sha256 "29a24c1d78096a682b9a541622a188cc9f84af0ed220198f13a2278bba5ff568"

  url "https://download.semiconductor.samsung.com/resources/software-resources/Samsung_Magician_Installer_Official_#{version}.pkg"
  name "Samsung Magician"
  desc "Manages Samsung memory products (portable SSDs, memory cards, USB flash drives)"
  homepage "https://semiconductor.samsung.com/consumer-storage/support/tools/"

  livecheck do
    url :homepage
    regex(/href=.*?Samsung[._-]Magician[._-]Installer[._-]Official[._-](\d+(?:\.\d+)+)\.pkg/i)
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "Samsung_Magician_Installer_Official_#{version}.pkg"

  uninstall launchctl: [
              "com.samsung.magicianapp",
              "com.samsung.magiciansvc",
            ],
            signal:    [
              ["QUIT", "com.samsung.magician.8.0"],
              ["TERM", "com.samsung.magiciansvc"],
            ],
            kext:      [
              "com.samsung.magicianpssd.driver",
              "com.samsung.magicianpssd.driverx",
            ],
            pkgutil:   [
              "com.samsung.magician.svc",
              "com.samsung.magicianpssduniversal.driverpkg",
              "com.samsung.magicianpssduniversal.driverXpkg",
            ],
            delete:    [
              "/Applications/SamsungMagician.app",
              "~/Desktop/SamsungMagician.app",
              "~/Library/Application Support/Samsung/Samsung Magician",
            ]

  zap trash: "~/Library/Application Support/Samsung Magician"

  caveats do
    reboot
    kext
  end
end
