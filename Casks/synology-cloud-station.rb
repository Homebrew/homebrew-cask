cask :v1 => 'synology-cloud-station' do
  version '3423'
  sha256 'c800dca63285cc754b34806c4f0dde11fa1ca4d3d31aa8eeb8ca129555c094e2'

  url "https://global.download.synology.com/download/Tools/CloudStation/#{version}/Mac/synology-cloud-station-#{version}.dmg"
  homepage 'http://www.synology.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "synology-cloud-station-#{version}.pkg"

  uninstall :pkgutil => 'com.synology.CloudStation',
            :launchctl => 'com.synology.Synology Cloud Station'
end
