cask 'panoply' do
  version '4.8.5'
  sha256 '1e99c3ecafe7d430c4d3ce3eaf0a48d2da8d660e5695949aea805339d30bc6ff'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
