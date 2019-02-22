cask 'sound-control' do
  version '2.3.2'
  sha256 '7918c30ba3bfe2ec3d35c6eaca560c4fa0c0bb6b5bd4e759f194a44b84692f4e'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControl_#{version}.dmg"
  appcast 'http://staticz.net/updates/soundcontrol.rss'
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  app 'Sound Control.app'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl'
end
