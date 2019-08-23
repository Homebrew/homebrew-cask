cask 'sound-control' do
  version '2.3.3'
  sha256 '6d62167ac9246f739358e52bbf28e85ed09f9b38b0be7b4a26d482d0b34f723e'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControl_#{version}.dmg"
  appcast 'http://staticz.net/updates/soundcontrol.rss'
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  auto_updates true

  app 'Sound Control.app'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl'
end
