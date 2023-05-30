cask "motu-m-series" do
  version "92737"
  sha256 "5469d64fb416aefce5afd0e95bc972273a7b4b39ad778adcb4e721397158d4e2"

  url "https://cdn-data.motu.com/downloads/audio/mseries/driver/RC/MOTU%20MSeries%20Installer%20(#{version}).pkg"
  name "Motu M-Series"
  desc "Audio interface driver for Motu M-Series (M2, M4, M6) audio interfaces"
  homepage "https://motu.com/en-us/download/product/408/"

  livecheck do
    url :homepage
    regex(/<h2[^>]*?>.*?motu\s?m-series\s?installer.*?\s*?<p[^>]*?>.*?version.*?(\d+(?:\.\d+)*).*?</i)
    strategy :page_match
  end

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
