cask "motu-m-series" do
  version "95678"
  sha256 "99bef4e47447a9f1eae9db85ce8282d36e9de4ea32717dabf77fd5678a7ba02a"

  url "https://cdn-data.motu.com/downloads/audio/mseries/driver/RC/MOTU%20MSeries%20Installer%20(#{version}).pkg"
  name "Motu M-Series"
  desc "Audio interface driver for Motu M-Series (M2, M4, M6) audio interfaces"
  homepage "https://motu.com/en-us/download/product/408/"

  livecheck do
    url :homepage
    regex(/<span[^>]*?>Mac\s*v?(\d+(?:\.\d+)*)</i)
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
