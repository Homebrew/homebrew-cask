cask :v1 => 'synology-cloud-station' do
  version '3475'
  sha256 'ce777034689f05a2b03d937addeb2b2560f912288f8638df8188050672e55e7d'

  url "https://global.download.synology.com/download/Tools/CloudStation/#{version}/Mac/synology-cloud-station-#{version}.dmg"
  name 'Synology Cloud Station'
  homepage 'http://www.synology.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "synology-cloud-station-#{version}.pkg"

  uninstall :pkgutil => 'com.synology.CloudStation',
            :launchctl => 'com.synology.Synology Cloud Station'
end
