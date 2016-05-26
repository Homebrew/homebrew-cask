cask :v1 => 'indigo' do
  version :latest
  sha256 :no_check

  url 'http://cloud.goprism.com/download/Indigo.dmg'
  homepage 'http://www.perceptiveautomation.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Indigo Installer.pkg'

  uninstall :kext => 'com.perceptiveautomation.indigo_overrides.kext',
    :pkgutil => 'com.perceptiveautomation.pkg.*'
end
