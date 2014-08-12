class Indigo < Cask
  version 'latest'
  sha256 :no_check

  url 'http://cloud.goprism.com/download/Indigo.dmg'
  homepage 'http://www.perceptiveautomation.com/indigo/index.html'

  install 'Indigo Installer.pkg'
  uninstall :kext => 'com.perceptiveautomation.indigo_overrides.kext',
    :pkgutil => 'com.perceptiveautomation.pkg.*'
end
