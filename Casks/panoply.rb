cask 'panoply' do
  version '4.5.1'
  sha256 '5e5bb148b10bf554b6499fe1b9cbfefef3285a1d44ac2e6489a5beb4ef0482a2'

  url "http://www.giss.nasa.gov/tools/panoply/PanoplyOSX-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'
  license :closed

  app 'Panoply.app'

  caveats do
    depends_on_java('7+')
  end
end
