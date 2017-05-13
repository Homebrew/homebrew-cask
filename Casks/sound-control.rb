cask 'sound-control' do
  version '2.0.1'
  sha256 'edb2f91bd053f2ca48fe4121360d027f10e1b9fb8685e1444b20f024e712ddd9'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControlInstaller_#{version}.dmg"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  pkg 'Sound Control Installer.pkg'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl',
            pkgutil:   'com.staticz.installer.soundcontrol.*'
end
