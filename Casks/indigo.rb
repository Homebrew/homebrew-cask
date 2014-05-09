class Indigo < Cask
  url 'http://cloud.goprism.com/download/Indigo.dmg'
  homepage 'http://www.perceptiveautomation.com/indigo/index.html'
  version 'latest'
  sha256 :no_check
  install 'Indigo Installer.pkg'
  uninstall :kext => 'com.perceptiveautomation.indigo_overrides.kext',
    :pkgutil => 'com.perceptiveautomation.pkg.*'
end
