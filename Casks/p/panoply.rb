cask "panoply" do
  arch arm: "arm64-"

  version "5.10.4"
  sha256 arm:   "c6e5fabf33b215931bca1442492180990724070313bde5a757049ac4880ca1f3",
         intel: "eeba1feeaea045ac711c95a92e590a36f0e5c66eebd632eca51bba6c9add3e81"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{arch}#{version}.dmg"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  desc "Plot geo-referenced data from netCDF, HDF, and GRIB"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  livecheck do
    url "https://www.giss.nasa.gov/tools/panoply/download/"
    regex(/href=.*?PanoplyMacOS[._-]#{arch}v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "Panoply.app"

  uninstall quit: "gov.nasa.giss.panoply"

  zap trash: [
    "~/Library/Caches/gov.nasa.giss.panoply",
    "~/Library/Preferences/gov.nasa.giss.panoply.plist",
    "~/Library/Preferences/gov.nasa.giss.Panoply.prefs.xml",
  ]

  caveats do
    depends_on_java "11+"
  end
end
