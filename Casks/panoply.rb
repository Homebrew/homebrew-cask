cask 'panoply' do
  version '4.4.2a'
  sha256 '8807ce41c469f7b896ae036985f1d6f098f316efb94c8ea347c72fae9724348b'

  url "http://www.giss.nasa.gov/tools/panoply/PanoplyOSX-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'
  license :closed

  app 'Panoply.app'

  caveats do
    depends_on_java('7+')
  end
end
