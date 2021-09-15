cask "panoply" do
  version "4.12.10"
  sha256 "a26ffb266ddbbb3cf200c147da94e55368f033b81d26b6c862ec436b9f649ac9"

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
