cask 'synology-cloud-station-drive' do
  version '4.2.2-4379'
  sha256 '63c108164de7440cc7b3680e79a462c26a94f591f78380290a83782a30098f43'

  url "https://global.download.synology.com/download/Tools/CloudStationDrive/#{version}/Mac/Installer/synology-cloud-station-drive-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station Drive'
  homepage 'https://www.synology.com/'

  pkg 'Install Cloud Station Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'
end
