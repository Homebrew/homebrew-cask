cask 'panoply' do
  version '4.9.3'
  sha256 'b3be647570b1833a6422564a7eb5fb22d666a5b65d079f96a01dcb78ee75f616'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
