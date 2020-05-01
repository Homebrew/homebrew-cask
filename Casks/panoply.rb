cask 'panoply' do
  version '4.11.2'
  sha256 '8ced2a0a79dbbf776e81d9d8c0c6e0cca7d88e91d5fcd7c65953dd251a097874'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast 'https://www.giss.nasa.gov/tools/panoply/download/'
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
