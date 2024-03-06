cask "samsung-magician" do
  version "8.0.0.900"
  sha256 "674c48a9b9bd6a3ca8deaf0dd2dc757701b16b40229b1f1fe275ec9cc67c3590"

  url "https://download.semiconductor.samsung.com/resources/software-resources/Samsung_Magician_installer_Official_#{version}.pkg"
  name "Samsung Magician"
  desc "Samsung consumer memory products software utility"
  homepage "https://semiconductor.samsung.com/consumer-storage/support/tools/"

  livecheck do
    url :homepage
    regex(/Samsung[._-]Magician[._-]installer[._-]Official[._-]v?(\d+(?:\.\d+)+)\.pkg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| (match[0]).to_s }
    end
  end

  auto_updates true
  conflicts_with cask: "samsung-portable-ssd-t7"
  depends_on macos: ">= :high_sierra"

  pkg "Samsung_Magician_installer_Official_#{version}.pkg"

  uninstall launchctl: ["com.samsung.magicianapp", "com.samsung.magiciansvc"],
            quit:      ["/Applications/SamsungMagician.app", "com.samsung.magician.*", "com.samsung.magiciansvc"],
            kext:      ["com.samsung.magicianpssd.driver", "com.samsung.magicianpssd.driverX"],
            pkgutil:   ["com.samsung.magician.*", "com.samsung.magicianpssduniversal.*"],
            delete:    ["/Applications/SamsungMagician.app", "/Library/Extensions/SamsungMagicianPSSDDriver.kext",
                        "/Library/Extensions/SamsungMagicianPSSDDriverX.kext"]

  zap trash: [
    "~/Library/LaunchAgents/com.samsung.magicianapp.plist",
    "~/Library/LaunchAgents/com.samsung.magiciansvc.plist",
  ]

  caveats do
    reboot
    kext
  end
end
