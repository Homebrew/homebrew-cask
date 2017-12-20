cask 'macs-fan-control' do
  version '1.4.9'
  sha256 '2a423e7f3652a3c6e7ec67827eda41f4418390e72109566dda60143f63f7dbaf'

  url 'https://www.crystalidea.com/downloads/macsfancontrol.zip'
  appcast 'https://www.crystalidea.com/macs-fan-control/release-notes',
          checkpoint: 'ab027ece8db076a9920fd6156d73e43a194f50dfe2cc7f86fc134b3c54b52c0e'
  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  auto_updates true

  app 'Macs Fan Control.app'

  uninstall login_item: 'Macs Fan Control',
            signal:     ['TERM', 'com.crystalidea.MacsFanControl']

  zap trash: '~/Library/Preferences/com.crystalidea.macsfancontrol.plist'
end
