cask 'macs-fan-control' do
  version '1.4.8.1'
  sha256 'd5e84f099c5e1cb6e56ab376784be5e9e7e3552ce773af41494a1a22df20e8e6'

  url 'https://www.crystalidea.com/downloads/macsfancontrol.zip'
  appcast 'https://www.crystalidea.com/macs-fan-control/release-notes',
          checkpoint: 'fc88cb022f266ad06bbeb3f9fbb23847d2f1e0e7ccdac072738327aa4571a621'
  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  auto_updates true

  app 'Macs Fan Control.app'

  uninstall login_item: 'Macs Fan Control',
            signal:     ['TERM', 'com.crystalidea.MacsFanControl']

  zap trash: '~/Library/Preferences/com.crystalidea.macsfancontrol.plist'
end
