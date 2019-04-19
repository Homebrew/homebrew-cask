cask 'panoply' do
  version '4.10.5'
  sha256 '02a002cc5532b003b2c60c6efc48e9e8d5d12bde23132dbf63d8dfe7a4efa68f'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
