cask 'panoply' do
  version '4.10.10'
  sha256 '6a347c2755650ce2e284270bc5734f75c4b89caf4d5f9b0b4287717517330d1f'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  appcast 'https://www.giss.nasa.gov/tools/panoply/download/'
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
