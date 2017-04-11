cask 'sound-siphon' do
  version '2.0.6'
  sha256 '1bb4aa47fd215fafaa085b71b66a7de615eee27650af1f78382224699cd7ede6'

  # staticz.net was verified as official when first introduced to the cask
  url "http://staticz.net/downloads/SoundSiphonInstaller_#{version}.dmg"
  name 'SoundSiphon'
  homepage 'https://staticz.com/soundsiphon/'

  pkg 'Sound Siphon Installer.pkg'

  uninstall pkgutil: 'com.staticz.installer.soundsiphon.*'

  caveats "You need to restart your Mac before using #{token}."
end
