cask 'synology-cloud-station-drive' do
  version '4.0-4203'
  sha256 '4e4d705e77faec58d04d816d3d6eeb0fd081345490c0fd338184e06243cd22ca'

  url "https://global.download.synology.com/download/Tools/CloudStationDrive/#{version}/Mac/Installer/synology-cloud-station-drive-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Drive'
  homepage 'https://www.synology.com/'
  license :gratis

  pkg 'Install Cloud Station Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
