cask 'panoply' do
  version '4.6.1'
  sha256 '465074f0088e6b254563dc97d661c47409bef5bfd0510982d5fb8859669f48ec'

  url "http://www.giss.nasa.gov/tools/panoply/download/PanoplyMacOS-#{version}.dmg"
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'

  app 'Panoply.app'

  caveats do
    depends_on_java('7+')
  end
end
