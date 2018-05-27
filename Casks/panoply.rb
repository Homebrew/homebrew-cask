cask 'panoply' do
  version '4.9.0'
  sha256 '0a165b9e7cbe48e91f7c77d203edebb3f52bd7a5ff3da93cf9386c9553476239'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
