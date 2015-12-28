cask 'fauxpas' do
  version '1.6'
  sha256 '6a5d518df5a67ffef360cdcaef41dd10365bc90390354d5cde19e310d6ad9da6'

  url "http://files.fauxpasapp.com/FauxPas-#{version}.tar.bz2"
  appcast 'http://api.fauxpasapp.com/appcast',
          :sha256 => '478477793b0b317edeae2cda359bc0d180e8749ac72d11a5c71a5d9dab4a0f93'
  name 'Faux Pas'
  homepage 'http://fauxpasapp.com'
  license :commercial

  app 'FauxPas.app'
end
