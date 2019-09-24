cask 'macs-fan-control' do
  version '1.5'
  sha256 '3ce0d04a629fa4ccd2e8a7141f3f7a566d8907d59a197234bd1264b756564465'

  # github.com/crystalidea/macs-fan-control was verified as official when first introduced to the cask
  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version}/macsfancontrol.zip"
  appcast 'https://github.com/crystalidea/macs-fan-control/releases.atom'
  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Macs Fan Control.app'

  uninstall signal: ['TERM', 'com.crystalidea.MacsFanControl']

  zap trash: '~/Library/Preferences/com.crystalidea.macsfancontrol.plist'
end
