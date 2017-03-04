cask 'fauxpas' do
  version '1.7.1'
  sha256 '504cec20886c05a6d69472d06f04a0e943f82a72ebb49b50cd506bdc92a3add8'

  url "http://files.fauxpasapp.com/FauxPas-#{version}.tar.bz2"
  appcast 'http://files.fauxpasapp.com/appcast.xml',
          checkpoint: 'd7ab51d8537cbaaf0bf5154057d5d705ee06eead6256f8d812df714f034e4575'
  name 'Faux Pas'
  homepage 'http://fauxpasapp.com/'

  app 'FauxPas.app'
end
