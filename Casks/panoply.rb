cask "panoply" do
  version "4.12.8"
  sha256 "7f8b7d7741e8d7480dc719772106f1af88d28360656453fe1452a9fa85fb1bbd"

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
