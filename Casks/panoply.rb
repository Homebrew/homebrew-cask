cask "panoply" do
  version "5.1.0"
  sha256 "55777b5b54d286c2ff834bdeb34a60c19a8a93ea1f33c2e25eac531d0a46e2df"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  desc "Plot geo-referenced data from netCDF, HDF, and GRIB"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  livecheck do
    url "https://www.giss.nasa.gov/tools/panoply/download/"
    regex(/href=.*?PanoplyMacOS[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Panoply.app"

  zap trash: [
    "~/Library/Caches/gov.nasa.giss.panoply",
    "~/Library/Preferences/gov.nasa.giss.panoply.plist",
    "~/Library/Preferences/gov.nasa.giss.Panoply.prefs.xml",
  ]

  caveats do
    depends_on_java "9+"
  end
end
