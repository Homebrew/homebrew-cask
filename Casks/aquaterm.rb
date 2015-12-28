cask 'aquaterm' do
  version '1.1.1'
  sha256 '94b33efea2ec037e6c06beef54b4b3cc48595453c874de863f25c26b3a7ffdb2'

  url "http://downloads.sourceforge.net/project/aquaterm/AquaTerm/v#{version}/AquaTerm-#{version}.dmg"
  name 'AquaTerm'
  homepage 'http://aquaterm.sourceforge.net/'
  license :bsd

  pkg 'AquaTermInstaller.pkg'

  uninstall :pkgutil => 'net.sourceforge.aquaterm.aquaterm.*'
end
