cask 'macs-fan-control' do
  version '1.4.10'
  sha256 'c07d71e1b3660c508f0f03f91be2fec0bf81efb2e680114478d16bb90c3039eb'

  url 'https://www.crystalidea.com/downloads/macsfancontrol.zip'
  appcast 'https://www.crystalidea.com/macs-fan-control/release-notes'
  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  auto_updates true

  app 'Macs Fan Control.app'

  uninstall login_item: 'Macs Fan Control',
            signal:     ['TERM', 'com.crystalidea.MacsFanControl']

  zap trash: '~/Library/Preferences/com.crystalidea.macsfancontrol.plist'
end
