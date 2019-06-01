cask 'panoply' do
  version '4.10.7'
  sha256 '9092b368c14524ed67356cd11a9c503e4983719ebe290e6f12d017721b0248e4'

  url "https://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'https://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java '8+'
  end
end
