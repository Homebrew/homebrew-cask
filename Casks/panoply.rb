cask "panoply" do
  version "4.12.1"
  sha256 "6e56a17bb0181181432f3575dc56a053ee795053f991c6222eb7208ed10b5c8b"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast "https://www.giss.nasa.gov/tools/panoply/download/"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  app "Panoply.app"

  caveats do
    depends_on_java "8+"
  end
end
