cask 'panoply' do
  version '4.8.1'
  sha256 'e6142a1c1d83313381ab33b9faa2fe85aa455fc816d55fb5d02231b484eaf520'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
