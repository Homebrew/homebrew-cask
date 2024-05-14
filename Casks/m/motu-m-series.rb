cask "motu-m-series" do
  version "95541"
  sha256 "a01b367553f9b02c64ab0737c40295c249e1767cb87fd585ff64b543bdd69622"

  url "https://cdn-data.motu.com/downloads/audio/mseries/driver/RC/MOTU%20M%20Series%20Installer%20(#{version}).pkg"
  name "Motu M-Series"
  desc "Audio interface driver for Motu M-Series (M2, M4, M6) audio interfaces"
  homepage "https://motu.com/en-us/download/product/408/"

  livecheck do
    url :homepage
    regex(/<span[^>]*?>Mac\s*v?(\d+(?:\.\d+)*)</i)
  end

  depends_on macos: ">= :mojave"

  pkg "MOTU M Series Installer (#{version}).pkg"

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
