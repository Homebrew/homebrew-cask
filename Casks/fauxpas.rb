cask :v1 => 'fauxpas' do
  version '1.6'
  sha256 '6a5d518df5a67ffef360cdcaef41dd10365bc90390354d5cde19e310d6ad9da6'

  url "http://files.fauxpasapp.com/FauxPas-#{version}.tar.bz2"
  appcast 'http://api.fauxpasapp.com/appcast'
  name 'Faux Pas'
  homepage 'http://fauxpasapp.com'
  license :commercial

  app 'FauxPas.app'
end
