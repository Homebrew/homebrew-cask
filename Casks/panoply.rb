cask 'panoply' do
  version '4.11.5'
  sha256 '91ea5e4ca42a55a47f62dfe04fec64dc3c09eda9424f5c2dd1c1c9bcaf6edcd6'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast 'https://www.giss.nasa.gov/tools/panoply/download/'
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
