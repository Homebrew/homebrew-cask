cask :v1 => 'panoply' do
  version '4.3.2'
  sha256 'c25076bf62d367cb10f22b0a86249a9989f7b9ca91ff9a392585471c67bd9a3a'

  url "http://www.giss.nasa.gov/tools/panoply/PanoplyOSX-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  name 'Panoply'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'
  license :closed

  app 'Panoply.app'

  caveats <<-EOS.undent
    #{token} requires Java 7+, you can install the latest Java using
      brew cask install java
  EOS
end
