cask 'fauxpas' do
  version '1.6.1'
  sha256 '8fa9f4e02e58f1916730dea2c074775af2c7b873328f7a61cda31d91d2817e45'

  url "http://files.fauxpasapp.com/FauxPas-#{version}.tar.bz2"
  appcast 'http://files.fauxpasapp.com/appcast.xml',
          checkpoint: '30c973f4af6720f24f73003d2d4acfda48c20263b45159edac57df8cc92c0a26'
  name 'Faux Pas'
  homepage 'http://fauxpasapp.com'
  license :commercial

  app 'FauxPas.app'
end
