cask "panoply" do
  version "4.12.3"
  sha256 "af291a4a8c163051433be7e666e9b82661d466a7768498cdbdd9fa8ce660d9e6"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast "https://www.giss.nasa.gov/tools/panoply/download/"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  app "Panoply.app"

  caveats do
    depends_on_java "8+"
  end
end
