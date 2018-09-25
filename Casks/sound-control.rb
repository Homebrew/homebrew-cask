cask 'sound-control' do
  version '2.2.4'
  sha256 '248b1dce993d001735335992c035115815be8dd1f3a7975bed3a746405eab560'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControl_#{version}.dmg"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  app 'Sound Control.app'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl'
end
