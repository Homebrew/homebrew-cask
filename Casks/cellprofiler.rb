cask 'cellprofiler' do
  version :latest
  sha256 :no_check
  
  # cellprofiler-org.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'http://cellprofiler-org.s3.amazonaws.com/CellProfiler.dmg'
  name 'CellProfiler'
  homepage 'http://cellprofiler.org'
  license :oss
  
  app 'CellProfiler.app'
end
