cask 'presentation' do
  version '2.2.1'
  sha256 'a782153138ac65e71c976365494beabddcccbec509df592af57a3fe8d188a7a0'

  url "http://iihm.imag.fr/blanch/software/osx-presentation/releases/osx-presentation-#{version}.pkg"
  appcast 'http://iihm.imag.fr/blanch/software/osx-presentation/'
  name 'Présentation'
  homepage 'http://iihm.imag.fr/blanch/software/osx-presentation/'

  pkg "osx-presentation-#{version}.pkg"

  uninstall pkgutil: 'fr.imag.iihm.blanch.osx-presentation'
end
