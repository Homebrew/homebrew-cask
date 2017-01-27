cask 'panoply' do
  version '4.6.2'
  sha256 '4530da27271ae5819bbb03e17ebac83633f061d80d4ece67b1c7f1d1c210832b'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('7+')
  end
end
