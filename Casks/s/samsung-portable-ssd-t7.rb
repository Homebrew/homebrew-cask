cask "samsung-portable-ssd-t7" do
  version "1.7.5,1.0"
  sha256 "43d45b6a8cf04eb1d7c13a951023581a3654f7fca0952aedf82aced896977672"

  url "https://semiconductor.samsung.com/resources/software-resources/SamsungPortableSSD_Setup_Mac_#{version.csv.second}.zip"
  name "Samsung Portable SSD Software for T7"
  desc "Software for Samsung external storage drives (T7 series)"
  homepage "https://semiconductor.samsung.com/consumer-storage/support/tools/"

  livecheck do
    url :homepage
    regex(/SamsungPortableSSD[._-]Setup[._-]Mac[._-]v?(\d+(?:\.\d+)+)[._-]v?(\d+(?:\.\d+)+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true

  pkg "SamsungPortableSSD_Setup_Mac_#{version.csv.second}.pkg"

  uninstall launchctl: "com.samsung.portablessdplus.mon",
            quit:      [
              "/Applications/SamsungPortableSSD_#{version.csv.second}.app",
              "com.samsung.portablessdplus.software",
            ],
            kext:      "com.samsung.portablessd.driver",
            pkgutil:   [
              "com.samsung.portablessd.driverpkg",
              "com.samsung.portablessdplus.softwarepkg",
              "com.samsung.portablessdplusuniversal.softwarepkg",
            ],
            delete:    [
              "/Applications/SamsungPortableSSD_#{version.csv.second}.app",
              "/Library/Extensions/SamsungPortableSSDDriver*.kext",
            ]

  zap trash: [
    "~/Library/Application Support/Portable_SSD",
    "~/Library/Application Support/PortableSSD",
    "~/Library/LaunchAgents/com.samsung.portablessdplus.mon.plist",
    "~/Library/Saved Application State/com.samsung.portablessd*",
  ]

  caveats do
    reboot
    kext
  end
end
