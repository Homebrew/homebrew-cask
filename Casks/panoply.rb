cask "panoply" do
  version "4.12.0"
  sha256 "166ee2e3c25bbd7f0f492a07851c2e3c8f990a693fcfef8e541e4a2ba2a2d0b4"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast "https://www.giss.nasa.gov/tools/panoply/download/"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  app "Panoply.app"

  caveats do
    depends_on_java "8+"
  end
end
