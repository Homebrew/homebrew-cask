cask "panoply" do
  version "4.12.6"
  sha256 "cbfdc2501e744a53b064f47699620ba838e565789f1162aab9d5bbeef357ce5e"

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
