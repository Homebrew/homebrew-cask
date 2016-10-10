cask 'fauxpas' do
  version '1.6.2'
  sha256 '2723b5a420d2ec37debe1511ef058370f356ec3decfb6bd74c10e28de192028a'

  url "http://files.fauxpasapp.com/FauxPas-#{version}.tar.bz2"
  appcast 'http://files.fauxpasapp.com/appcast.xml',
          checkpoint: '4ed08adb98070de7a9889ed57106241b073b01fb107d2a22adfd86e995b1feb9'
  name 'Faux Pas'
  homepage 'http://fauxpasapp.com'

  app 'FauxPas.app'
end
