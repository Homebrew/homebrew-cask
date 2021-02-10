cask "panoply" do
  version "4.12.2"
  sha256 "e4c192c9734b376ed1ca6a749347d8a4169ea88629f13bb9b1280d9b4ad4f8d3"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast "https://www.giss.nasa.gov/tools/panoply/download/"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  app "Panoply.app"

  caveats do
    depends_on_java "8+"
  end
end
