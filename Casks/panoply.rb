cask "panoply" do
  version "4.12.7"
  sha256 "36243fdeb58fcd75d3a90655a1ab4b070228ac2396650487b9d3a582739cb17f"

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
    depends_on_java "8+"
  end
end
