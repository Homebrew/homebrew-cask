cask 'panoply' do
  version '4.10.2'
  sha256 '2df880f90e3559e79fe16e8f8f11b5b556661f837f436174ae191f9a98e2d967'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
