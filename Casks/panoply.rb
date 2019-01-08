cask 'panoply' do
  version '4.10.3'
  sha256 'bc183b28a547ff1b0ca3f35909038d935c075a6140847185c7ae855303f459e5'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
