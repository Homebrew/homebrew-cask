cask 'cellprofiler' do
  version '3.1.9'
  sha256 '5500621a9c4322ece0bb80c40c6ffa44bf6dc086466ce3ed970c82639a39a955'

  # dpvpof9ygr7ad.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dpvpof9ygr7ad.cloudfront.net/CellProfiler-#{version}.app.zip"
  appcast 'https://github.com/CellProfiler/CellProfiler/releases.atom'
  name 'CellProfiler'
  homepage 'https://cellprofiler.org/'

  app "CellProfiler-#{version}.app"
end
