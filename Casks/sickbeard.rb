cask :v1 => 'sickbeard' do
  version '13.05.25'
  sha256 'c6ce8b987447d074622d5ee0c96ee6a6da121f5a43252a552e0fc6f5d1cc0550'

  url "http://sickbeard.lad1337.de/download.php?f=SickBeard-OSX-master-#{version}.dmg"
  homepage 'http://sickbeard.lad1337.de/'
  license :unknown

  app 'SickBeard.app'
end
