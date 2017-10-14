cask 'panoply' do
  version '4.8.4'
  sha256 '450f8f27d3504dddc840a9638f7ae2e30aa25a6a2f8d9ca0579d36441abcfd86'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('8+')
  end
end
