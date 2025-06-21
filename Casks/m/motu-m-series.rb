cask "motu-m-series" do
  version "96480"
  sha256 "c1605afc03b563b2a1b8f4412c2329574bffd8083a0a7f242a2ed1a377cbd76b"

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
