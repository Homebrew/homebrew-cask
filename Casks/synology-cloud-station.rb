cask :v1 => 'synology-cloud-station' do
  version '3317'
  sha256 'd3305b5f2b4d47cf84e18cdbdb86a58578bff396fbe4664c4c778745098a362d'

  url "https://global.download.synology.com/download/Tools/CloudStation/#{version}/Mac/synology-cloud-station-#{version}.dmg"
  homepage 'http://www.synology.com/'
  license :unknown

  pkg "synology-cloud-station-#{version}.pkg"
  uninstall :pkgutil => 'com.synology.CloudStation',
            :launchctl => 'com.synology.Synology Cloud Station'
end
