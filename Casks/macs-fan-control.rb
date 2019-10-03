cask 'macs-fan-control' do
  version '1.5'
  sha256 '3f719efaa0f290acf1b14aaad3389356bb52dd84b6be29746f43d5096ce63578'

  # github.com/crystalidea/macs-fan-control was verified as official when first introduced to the cask
  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version}/macsfancontrol.zip"
  appcast 'https://github.com/crystalidea/macs-fan-control/releases.atom'
  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'Macs Fan Control.app'

  uninstall signal: ['TERM', 'com.crystalidea.MacsFanControl']

  zap trash: '~/Library/Preferences/com.crystalidea.macsfancontrol.plist'
end
