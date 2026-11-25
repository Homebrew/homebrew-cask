cask "dfu-blaster-pro" do
  version "5.1,3621"
  sha256 "f0e3347d219589bd248917cd02a55beb3bbc78de8650927ea642e4be8a89093f"

  url "https://twocanoes-software-updates.s3.amazonaws.com/DFU_Blaster_Pro_Build-#{version.csv.second}_Version-#{version.csv.first}.dmg"
  name "DFU Blaster Pro"
  desc "Utility to put Apple silicon Macs into DFU mode for restore"
  homepage "https://twocanoes.com/products/mac/dfu-blaster/"

  livecheck do
    url "https://twocanoes.com/products/mac/dfu-blaster/history/"
    regex(%r{/DFU[._-]Blaster[._-]Pro[._-]Build[._-](\d+)[._-]Version[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on :macos

  pkg "DFU Blaster Pro.pkg"

  uninstall launchctl: "com.twocanoes.dfublasterhelper",
            pkgutil:   "com.twocanoes.pkg.DFU-Blaster"

  zap trash: [
    "~/Library/Application Support/com.twocanoes.DFU-Blaster-Pro",
    "~/Library/Caches/com.twocanoes.DFU-Blaster-Pro",
    "~/Library/HTTPStorages/com.twocanoes.DFU-Blaster-Pro",
    "~/Library/Preferences/com.twocanoes.DFU-Blaster-Pro.plist",
  ]
end
