cask "panoply" do
  version "5.0.1"
  sha256 "6ce5e83467c0597c060fca7c2998335da9c0a5856ff19c171c76a6eea21a8e50"

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
