cask 'panoply' do
  version '4.11.4'
  sha256 '9fa85d1b8e06c8ea4c5ac47239ec3dd962492d6c52f7b2547d3e0ae3eec7ce67'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast 'https://www.giss.nasa.gov/tools/panoply/download/'
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
