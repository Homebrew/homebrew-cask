cask 'cloud-station-drive' do
  version '4.2.6-4408'
  sha256 'c392cc60aefb54d4b1e67a526dcb653a6935def220ccbe4f539480718376cced'

  url "https://global.download.synology.com/download/Tools/CloudStationDrive/#{version}/Mac/Installer/synology-cloud-station-drive-#{version.sub(%r{.*-}, '')}.dmg"
  name 'Synology Cloud Station'
  homepage 'https://www.synology.com/'

  auto_updates true

  pkg 'Install Cloud Station Drive.pkg'

  uninstall pkgutil:   'com.synology.CloudStation',
            launchctl: 'com.synology.Synology Cloud Station'

  zap trash: '~/Library/Preferences/com.synology.CloudStationUI.plist'
end

