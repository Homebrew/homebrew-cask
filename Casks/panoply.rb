cask 'panoply' do
  version '4.8.2'
  sha256 'f08f3593961c49133bd9562bb240b6bfa89d4ebd0d16f86df612974be38fbdb4'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
