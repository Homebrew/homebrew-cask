cask "panoply" do
  arch arm: "arm64-"

  version "5.5.4"
  sha256 arm:   "5207a99eed154e8805c8e5749492c4c7efd6dabf49c225c85fd746e7c767a23e",
         intel: "b497aed3c21830fa1cfb419286a5662790d139418187b4ff30939d90e6fa17f8"

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
