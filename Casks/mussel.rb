cask 'mussel' do
  version '2015_02_27_1028'
  sha256 '1665e366824a1626dec8048f56c33a9e69a7e0528371bf46a85df8657fa7dc55'

  url "http://jonathanwhiting.com/mussel/mussel_osx_#{version}.zip"
  name 'Mussel'
  homepage 'http://jonathanwhiting.com/mussel/'

  app 'Mussel.app'
end
