cask 'panoply' do
  version '4.8.10'
  sha256 'd77e2a124e0163b8b6f4c399ea1adcbd7b2a8c089745f59bd64e3b6f00e80c0c'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
