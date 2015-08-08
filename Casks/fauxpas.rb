cask :v1 => 'fauxpas' do
  version '1.5'
  sha256 'ce985584daba2c5f98a66f03af6c8176247edd93332dec37b52938db4b49489a'

  url "http://files.fauxpasapp.com/FauxPas-#{version}.tar.bz2"
  appcast 'http://api.fauxpasapp.com/appcast'
  name 'Faux Pas'
  homepage 'http://fauxpasapp.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FauxPas.app'
end
