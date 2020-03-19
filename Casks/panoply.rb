cask 'panoply' do
  version '4.11.1'
  sha256 '2d0db2f6847e6acca9611b37e07509e835b9f392e2dff801594cb689975419e5'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast 'https://www.giss.nasa.gov/tools/panoply/download/'
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
