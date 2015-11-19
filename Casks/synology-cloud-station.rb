cask :v1 => 'synology-cloud-station' do
  version '3.2-3487'
  sha256 'c2446bb15ce0e113253635a3457643c260f9c92cf9aec5e4d69b5d49c2592631'

  url "https://global.download.synology.com/download/Tools/CloudStation/#{version}/Mac/Installer/synology-cloud-station-#{version.sub(%r{.*-},'')}.dmg"
  name 'Synology Cloud Station'
  homepage 'https://www.synology.com/'
  license :gratis

  pkg "synology-cloud-station-#{version.sub(%r{.*-},'')}.pkg"

  uninstall :pkgutil => 'com.synology.CloudStation',
            :launchctl => 'com.synology.Synology Cloud Station'
end
