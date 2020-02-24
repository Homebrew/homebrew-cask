cask 'macs-fan-control' do
  version '1.5.4'
  sha256 'a38780181ee0592c1f351a3d405fab6466bcc9f491c4916a24b379a515e4c47b'

  # github.com/crystalidea/macs-fan-control was verified as official when first introduced to the cask
  url "https://github.com/crystalidea/macs-fan-control/releases/download/v#{version.major_minor_patch}/macsfancontrol.zip"
  appcast 'https://github.com/crystalidea/macs-fan-control/releases.atom',
          configuration: version.major_minor_patch
  name 'Macs Fan Control'
  homepage 'https://www.crystalidea.com/macs-fan-control'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Macs Fan Control.app'

  uninstall signal: ['TERM', 'com.crystalidea.MacsFanControl']

  zap trash: '~/Library/Preferences/com.crystalidea.macsfancontrol.plist'
end
