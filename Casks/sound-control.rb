cask 'sound-control' do
  version '2.2.3'
  sha256 'ca282e493693910b0d94e61828a391cd18503957b34b0d6f6bb442b0068e5214'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundControlInstaller_#{version}.dmg"
  name 'Sound Control'
  homepage 'https://staticz.com/soundcontrol/'

  pkg 'Sound Control Installer.pkg'

  uninstall launchctl: 'com.staticz.soundcontrol.*',
            quit:      'com.staticz.SoundControl',
            pkgutil:   'com.staticz.installer.soundcontrol.*'
end
