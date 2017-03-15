cask 'panoply' do
  version '4.7.0'
  sha256 '17467c84ba9e8e359da0fd9d636710675b7c0b9637faaac5489f4faed64f89a2'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
