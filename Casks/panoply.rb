cask "panoply" do
  version "4.12.12"
  sha256 "3858baeb0352a74a8c2929804f0e624231f8b9ea0841a5c2438032daa74677cf"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  desc "Plot geo-referenced data from netCDF, HDF, and GRIB"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  livecheck do
    url "https://www.giss.nasa.gov/tools/panoply/download/"
    strategy :page_match
    regex(/href=.*?PanoplyMacOS-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "Panoply.app"

  caveats do
    depends_on_java "9+"
  end
end
