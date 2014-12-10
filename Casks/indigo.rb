cask :v1 => 'indigo' do
  version :latest
  sha256 :no_check

  url 'http://cloud.goprism.com/download/Indigo.dmg'
  homepage 'http://www.perceptiveautomation.com/indigo/index.html'
  license :unknown    # todo: improve this machine-generated value

  pkg 'Indigo Installer.pkg'

  uninstall :kext => 'com.perceptiveautomation.indigo_overrides.kext',
    :pkgutil => 'com.perceptiveautomation.pkg.*'
end
