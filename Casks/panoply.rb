cask 'panoply' do
  version '4.11.3'
  sha256 '51521b33743238e260ab49e5147200190baf2ac11e40548292925776db95990f'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast 'https://www.giss.nasa.gov/tools/panoply/download/'
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
