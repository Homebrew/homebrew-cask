cask 'panoply' do
  version '4.10.8'
  sha256 '79a603049f960cfe1628a525bea0a274e405ca0ec07677f6f6f863c32859760d'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
