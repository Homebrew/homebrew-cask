cask 'gobdokumente' do
  version '1.6.2'
  sha256 '131eab8d056e1838db8002ee08deccf842b157a701063c71bf1d2b12218fa262'

  # download.moapp.software was verified as official when first introduced to the cask
  url 'https://download.moapp.software/GoBDokumente.zip'
  appcast 'https://sparkle.moapp.software/gobdokumente.xml'
  name 'GoBDokumente'
  homepage 'https://gobdokumente.de/'

  app 'GoBDokumente.app'
end
