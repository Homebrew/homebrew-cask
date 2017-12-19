cask 'macs-fan-control' do
  version '1.4.9'
  sha256 '2a423e7f3652a3c6e7ec67827eda41f4418390e72109566dda60143f63f7dbaf'

  url 'https://www.crystalidea.com/downloads/macsfancontrol.zip'
  appcast 'https://www.crystalidea.com/macs-fan-control/release-notes',
          checkpoint: 'ec031156fa9060e9f396fe7b9eb6e72f4686ce849835bc3867f9a32bdef134b9'
  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  auto_updates true

  app 'Macs Fan Control.app'

  uninstall login_item: 'Macs Fan Control',
            signal:     ['TERM', 'com.crystalidea.MacsFanControl']

  zap trash: '~/Library/Preferences/com.crystalidea.macsfancontrol.plist'
end
