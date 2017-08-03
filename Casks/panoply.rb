cask 'panoply' do
  version '4.8.1'
  sha256 'cd8c729cfa71f3bac7ab12eb4932de16486389990d850ef95377c0232129505d'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
