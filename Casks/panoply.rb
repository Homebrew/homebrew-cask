cask "panoply" do
  version "4.12.4"
  sha256 "215cf6e54f5ceadc35a211f304892efb2685de5b75cc2db762c19fcbf891a1ee"

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
