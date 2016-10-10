cask 'synology-cloud-station-drive' do
  version '4.1-4222'
  sha256 '6a84d26a954ba134d8434b61ae24e4807479d8b0486a33a5a4b44769f123b3de'

  url "https://global.download.synology.com/download/Tools/CloudStationDrive/#{version}/Mac/Installer/synology-cloud-station-drive-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Drive'
  homepage 'https://www.synology.com/'

  pkg 'Install Cloud Station Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
