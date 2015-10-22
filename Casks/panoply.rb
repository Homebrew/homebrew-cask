cask :v1 => 'panoply' do
  version '4.3.1'
  sha256 '6a700118d7a1c15e4aad50f978be2733f49dbfa051c7901ed791b4d6a8361e67'

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
