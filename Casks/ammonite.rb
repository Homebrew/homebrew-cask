cask 'ammonite' do
  version '1.14'
  sha256 '63f401c6f8db49bd667d4caced2b979d20c7b33fa39486c809802c9bf54b1d66'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          checkpoint: '1f3d151bd563d366ffec45bbe2821222829afade44eead82976544af2c36f467'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
