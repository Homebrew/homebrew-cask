cask 'macs-fan-control' do
  version '1.5.6'
  sha256 'b5178ca7810932fe2aae1e5c8c74bcb6e69fc618790b05fbb50ab4e134c711ad'

  # github.com/crystalidea/macs-fan-control/ was verified as official when first introduced to the cask
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
