cask 'panoply' do
  version '4.10.4'
  sha256 '6d77cd8e214f941105039e07e27ed72237899116497503a5a00718406b56abe9'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
