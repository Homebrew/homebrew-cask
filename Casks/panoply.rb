cask 'panoply' do
  version '4.8.7'
  sha256 '9beb687bf4645e9b3114b20563e091b64795a64d64dadabcaf33147bd4c315be'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
