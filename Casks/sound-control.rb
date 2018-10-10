cask 'sound-control' do
  version '2.2.5'
  sha256 'edc0d7901f886ab4ed153f17edcd48e0384f9532822d6fbe2a07a3ec166b56e6'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControl_#{version}.dmg"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  app 'Sound Control.app'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl'
end
