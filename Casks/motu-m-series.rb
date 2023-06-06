cask "motu-m-series" do
  version "93305"
  sha256 "4936d5ecb335dad01c473d4d588420acb044a75434c5bf939c94ba6edd1fb7d8"

  url "https://cdn-data.motu.com/downloads/audio/mseries/driver/RC/MOTU%20MSeries%20Installer%20(#{version}).pkg"
  name "Motu M-Series"
  desc "Audio interface driver for Motu M-Series (M2, M4, M6) audio interfaces"
  homepage "https://motu.com/en-us/download/product/408/"

  livecheck do
    url :homepage
    regex(/<h2[^>]*?>.*?motu\s?m-series\s?installer.*?\s*?<p[^>]*?>.*?version.*?(\d+(?:\.\d+)*).*?</i)
  end

  depends_on macos: ">= :mojave"

  pkg "MOTU MSeries Installer (#{version}).pkg"

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
