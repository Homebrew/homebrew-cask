cask 'synology-surveillance-station-client' do
  version '1.0.3-0214'
  sha256 '8a9ed4a817307307a3640a2e9bfc34e95a65aa929eef87b7e0f1f51cdd97eece'

  url "https://global.download.synology.com/download/Tools/SurveillanceStationClient/#{version}/Mac/Synology%20Surveillance%20Station%20Client-#{version}.dmg"
  name 'Synology Surveillance Station Client'
  homepage 'https://www.synology.com/surveillance/'

  pkg 'Surveillance Station Client.pkg'

  uninstall pkgutil:   [
                         'com.synology.svsclient-Live-View',
                         'com.synology.svsclient-Recording',
                         'com.synology.svsclient-Timeline',
                       ],
            launchctl: 'com.synology.ssc.launch.agent'
end
