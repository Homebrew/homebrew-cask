cask :v1 => 'panoply' do
  version :latest
  sha256 :no_check

  url 'http://www.giss.nasa.gov/tools/panoply/PanoplyOSX.dmg'
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  name 'Panoply'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'
  license :closed

  app 'Panoply.app'
end
