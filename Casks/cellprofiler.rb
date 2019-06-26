cask 'cellprofiler' do
  version '3.1.8'
  sha256 '094ed77bdb0cfd40d7b060d8d88c1fc44aab7caf77a65d6f7f4cb80c074f9af8'

  # dpvpof9ygr7ad.cloudfront.net was verified as official when first introduced to the cask
  url "https://dpvpof9ygr7ad.cloudfront.net/CellProfiler-#{version}.app.zip"
  appcast 'https://github.com/CellProfiler/CellProfiler/releases.atom'
  name 'CellProfiler'
  homepage 'https://cellprofiler.org/'

  app "CellProfiler-#{version}.app"
end
