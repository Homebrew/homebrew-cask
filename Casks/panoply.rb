cask 'panoply' do
  version '4.9.4'
  sha256 '6b3d5fe8216faf70798535db8eef76caecb0f7407b3a1441420638b9860adbda'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
