cask "motu-m-series" do
  version "92737"
  sha256 :no_check

  url "https://motu.com/en-us/download-center/download/600"
  name "Motu M-Series"
  desc "Audio interface driver for Motu M-Series (M2, M4, M6) audio interfaces"
  homepage "https://motu.com/en-us/download/product/408/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{vnum nobreak">Mac v(\d+)</span>})
  end

  pkg "MOTU MSeries Installer (#{version}).pkg"

  uninstall launchctl: "com.motu.coreuac.reenumerator",
            pkgutil:   [
              "com.motu.pkg.mseries",
              "com.motu.pkg.mseries.bigsur",
            ]

  zap trash: [
    "/Applications/MOTU M Series System Extension.app",
    "/Library/Application Scripts/com.motu.coreuac.dextmgr",
    "/Library/Application Support/MOTU/MSeries/com.motu.coreuac.reenumerator.xpc",
    "/Library/Audio/Plug-Ins/HAL/MOTUCoreUACAudioServerPlugin.driver",
    "/Library/LaunchDaemons/com.motu.coreuac.reenumerator.launchd.plist",
    "/Library/MOTU/MSeries/com.motu.coreuac.reenumerator.xpc",
    "/Library/SystemExtensions/7D77E1D5-85FB-46B2-926C-78B740F06217/com.motu.driver.coreuac.dext.dext",
    "~/Library/Application Scripts/com.motu.coreuac.dextmgr",
    "~/Library/Containers/com.motu.coreuac.dextmgr",
  ]
end
