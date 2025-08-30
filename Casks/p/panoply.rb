cask "panoply" do
  arch arm: "arm64-"

  version "5.7.0"
  sha256 arm:   "7e496a5d5eb44e6a6c4a711e6d25406b6c76eded6484dd749777c0efc061e152",
         intel: "b240c52ffa0fe71e9ac4685fd4c0fa4c836ac268f1e38d2b61ca28b743c7a5fd"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{arch}#{version}.dmg"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  desc "Plot geo-referenced data from netCDF, HDF, and GRIB"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  livecheck do
    url "https://www.giss.nasa.gov/tools/panoply/download/"
    regex(/href=.*?PanoplyMacOS[._-]#{arch}v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Panoply.app"

  zap trash: [
    "~/Library/Caches/gov.nasa.giss.panoply",
    "~/Library/Preferences/gov.nasa.giss.panoply.plist",
    "~/Library/Preferences/gov.nasa.giss.Panoply.prefs.xml",
  ]

  caveats do
    depends_on_java "11+"
  end
end
