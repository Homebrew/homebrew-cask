cask 'cellprofiler' do
  version '2.2.0'
  sha256 :no_check

  url 'http://cellprofiler-org.s3.amazonaws.com/CellProfiler.dmg'
  name 'CellProfiler'
  homepage 'http://cellprofiler.org'
  license :oss

  app 'CellProfiler.app'
end
