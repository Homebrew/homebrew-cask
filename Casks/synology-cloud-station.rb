cask :v1 => 'synology-cloud-station' do
  version '3.2-3484'
  sha256 'aa544573ca9f7d3cb6693cba2406901a8b5e241eba0ed12762346c2f31b7c0cd'

  url "https://global.download.synology.com/download/Tools/CloudStation/#{version}/Mac/Installer/synology-cloud-station-#{version.sub(%r{.*-},'')}.dmg"
  name 'Synology Cloud Station'
  homepage 'https://www.synology.com/'
  license :gratis

  pkg "synology-cloud-station-#{version.sub(%r{.*-},'')}.pkg"

  uninstall :pkgutil => 'com.synology.CloudStation',
            :launchctl => 'com.synology.Synology Cloud Station'
end
