cask :v1 => 'panoply' do
  version ':latest'
  sha256 '21838f2ca82745b3f60c820f0148ed56679adc9e000d10993cb59c99092ad956'

  url 'http://www.giss.nasa.gov/tools/panoply/PanoplyOSX.dmg'
  name 'Panoply netCDF, HDF and GRIB Data Viewer'
  name 'Panoply'
  homepage 'http://www.giss.nasa.gov/tools/panoply/'
  license :closed

  app 'Panoply.app'
end
