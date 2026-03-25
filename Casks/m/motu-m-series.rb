cask "motu-m-series" do
  version "2.0.2,b72db03fb"
  sha256 "60918307f0d62c80172652046214ce69b8f75123dbf240db2cbc3112760d63b5"

  url "https://cdn-data.motu.com/downloads/audio/mseries/driver/RC/MOTU%20MSeries%20Installer%20(#{version.csv.second}).pkg"
  name "Motu M-Series"
  desc "Audio interface driver for Motu M-Series (M2, M4, M6) audio interfaces"
  homepage "https://motu.com/en-us/download/product/408/"

  livecheck do
    url :homepage
    regex(/>\s*Mac\s*v?(\d+(?:\.\d+)+)\+(\h+)\s*</i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  pkg "MOTU MSeries Installer (#{version.csv.second}).pkg"

  uninstall launchctl: "com.motu.coreuac.reenumerator",
            pkgutil:   [
              "com.motu.pkg.mseries",
              "com.motu.pkg.mseries.bigsur",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.motu.coreuac.dextmgr",
    "~/Library/Containers/com.motu.coreuac.dextmgr",
  ]
end
