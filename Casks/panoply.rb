cask 'panoply' do
  version '4.10.6'
  sha256 'd7b5f8817fd29a451c6f3607ab817adedef5f49901697ddcf5d449c93f64576d'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
