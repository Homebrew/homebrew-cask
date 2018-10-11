cask 'panoply' do
  version '4.9.5'
  sha256 '8307539d50855df97b83262d8270fdca9c1883a1e0cb614ceba5399f104fe1b4'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
