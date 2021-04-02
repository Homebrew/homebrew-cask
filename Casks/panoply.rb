cask "panoply" do
  version "4.12.5"
  sha256 "4f882d7bde7ba39abadba79470d906f941605b2ccfacdd6915376f981d56ea57"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast "https://www.giss.nasa.gov/tools/panoply/download/"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  desc "Plot geo-referenced data from netCDF, HDF, and GRIB"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  app "Panoply.app"

  caveats do
    depends_on_java "8+"
  end
end
