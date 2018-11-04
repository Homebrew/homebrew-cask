cask 'sound-control' do
  version '2.2.6'
  sha256 '74516a0958e9c0efcc0367ae675ca60c793d331eab6c20fd58b45d5359f9ae0f'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControl_#{version}.dmg"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  app 'Sound Control.app'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl'
end
