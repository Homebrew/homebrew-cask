cask "samsung-portable-ssd-t7" do
  # Check on next version bump if the `container` stanza can be removed
  version "1.7.5,1.0"
  sha256 "e1ad2cbc94904f589a85110269b162c5f268296a83c647465290336c9bfee345"

  url "https://download.semiconductor.samsung.com/resources/software-resources/SamsungPortableSSD_Setup_Mac_#{version.csv.second}_#{version.csv.first}.zip"
  name "Samsung Portable SSD Software for T7"
  desc "Software for Samsung external storage drives (T7 series)"
  homepage "https://semiconductor.samsung.com/consumer-storage/support/tools/"

  livecheck do
    url :homepage
    regex(/SamsungPortableSSD[._-]Setup[._-]Mac[._-]v?(\d+(?:\.\d+)+)[._-](\d+(?:\.\d+)+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  auto_updates true
  container type: :generic_unar

  pkg "SamsungPortableSSD_Setup_Mac_#{version.csv.second}.pkg"

  uninstall quit:      [
              "com.samsung.portablessdplus.software",
              "/Applications/SamsungPortableSSD_#{version.csv.second}.app",
            ],
            launchctl: "com.samsung.portablessdplus.mon",
            kext:      "com.samsung.portablessd.driver",
            pkgutil:   [
              "com.samsung.portablessdplusuniversal.softwarepkg",
              "com.samsung.portablessd.driverpkg",
              "com.samsung.portablessdplus.softwarepkg",
            ],
            delete:    [
              "/Applications/SamsungPortableSSD_#{version.csv.second}.app",
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
