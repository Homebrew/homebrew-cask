cask "panoply" do
  version "4.11.6"
  sha256 "5ab864dcacc582161a34eca6b0f8b36ad54cc9ceb2dd0cd1c5ef393065e96d5a"

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast "https://www.giss.nasa.gov/tools/panoply/download/"
  name "Panoply netCDF, HDF and GRIB Data Viewer"
  homepage "https://www.giss.nasa.gov/tools/panoply/"

  app "Panoply.app"

  caveats do
    depends_on_java "8+"
  end
end
