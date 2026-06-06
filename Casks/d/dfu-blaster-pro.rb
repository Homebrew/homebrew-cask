cask "dfu-blaster-pro" do
  version "4.2,3282"
  sha256 "69a4eae2a7a6fb23be29c6f7a7c9540fbb8063a0b1993a9ca74365e23a25d07e"

  url "https://twocanoes-software-updates.s3.amazonaws.com/DFU_Blaster_Pro_Build-#{version.csv.second}_Version-#{version.csv.first}.dmg",
      verified: "twocanoes-software-updates.s3.amazonaws.com/"
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

  depends_on macos: :big_sur

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
