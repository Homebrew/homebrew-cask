cask 'network-radar' do
  version :latest
  sha256 :no_check

  url 'https://witt-software.com/downloads/networkradar/Network%20Radar.dmg'
  name 'Network Radar'
  homepage 'https://www.witt-software.com/networkradar'

  app 'Network Radar.app'

  zap trash: [
               '~/Library/Application Scripts/com.mac-attender.Network-Radar*',
               '~/Library/Containers/com.mac-attender.Network-Radar*',
             ]
end
