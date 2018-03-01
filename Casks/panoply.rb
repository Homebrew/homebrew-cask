cask 'panoply' do
  version '4.8.8'
  sha256 '211ef402d694eceee51cd0b65fc38f8dfc36b641abdcea9b7263376b71fa82c6'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
