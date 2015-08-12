cask :v1 => 'synology-cloud-station' do
  version '3482'
  sha256 '15bc32284c1466400291e863ba2541fd9b66c53d4ff2db9ca788f36a887314b4'

  url "http://global.download.synology.com/download/Tools/CloudStation/3.2-#{version}/Mac/Installer/synology-cloud-station-#{version}.dmg"
  name 'Synology Cloud Station'
  homepage 'https://www.synology.com/'
  license :gratis

  pkg "synology-cloud-station-#{version}.pkg"

  uninstall :pkgutil => 'com.synology.CloudStation',
            :launchctl => 'com.synology.Synology Cloud Station'
end
