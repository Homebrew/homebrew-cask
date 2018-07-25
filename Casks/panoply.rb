cask 'panoply' do
  version '4.9.2'
  sha256 'c1b972a8b6d686b1b5081c7cb2702fd5865628b1be4372b9070234cec3979468'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
