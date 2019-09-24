cask 'macs-fan-control' do
  version '1.5'
  sha256 'd86c46e6211cb5739517a9e2333ad37b2e680673a688e332579398e00cbe6999'

  # github.com/crystalidea/macs-fan-control was verified as official when first introduced to the cask
  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version}/macsfancontrol.zip"
  appcast 'https://github.com/crystalidea/macs-fan-control/releases.atom'
  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  auto_updates true

  app 'Macs Fan Control.app'

  uninstall signal: ['TERM', 'com.crystalidea.MacsFanControl']

  zap trash: '~/Library/Preferences/com.crystalidea.macsfancontrol.plist'
end
