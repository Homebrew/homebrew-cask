cask "panoply" do
  version "5.0.0"
  sha256 "6311f41e9771830789da505f095b0013bdad78ae38c8cd16ce9d5d5f05c6792f"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  desc "Plot geo-referenced data from netCDF, HDF, and GRIB"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  livecheck do
    url "https://www.giss.nasa.gov/tools/panoply/download/"
    regex(/href=.*?PanoplyMacOS-(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Panoply.app"

  caveats do
    depends_on_java "9+"
  end
end
