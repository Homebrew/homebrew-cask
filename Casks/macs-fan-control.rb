cask 'macs-fan-control' do
  version '1.5.5'
  sha256 '7f99242496eab3464c475b9f42f59d08e5313e40167367d1236d47f08302d2ab'

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
