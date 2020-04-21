cask 'presentation' do
  version '2.2.0'
  sha256 '8c441e174e3d3920681c58b40b586c1d10af604f68659dbb264ae7c0572d90b2'

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.pkg"
  appcast 'http://iihm.imag.fr/blanch/software/osx-presentation/'
  name 'Présentation'
  homepage 'http://iihm.imag.fr/blanch/software/osx-presentation/'

  pkg "osx-presentation-#{version}.pkg"

  uninstall pkgutil: 'fr.imag.iihm.blanch.osx-presentation'
end
