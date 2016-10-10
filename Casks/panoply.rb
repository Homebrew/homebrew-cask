cask 'panoply' do
  version '4.6.0'
  sha256 '5645381fd2317bc64d4d842d9b78cf499d3d8be2bd572557a3b0d1cd55d184ae'

  url "http://www.giss.nasa.gov/tools/panoply/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('7+')
  end
end
