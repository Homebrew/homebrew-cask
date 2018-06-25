cask 'gpower' do
  version '3.1.9.3'
  sha256 '45161c9ee8736bd46b25650183d63c183f34a1f7acb04f801fdc0b0da5c2711e'

  url "http://www.gpower.hhu.de/fileadmin/redaktion/Fakultaeten/Mathematisch-Naturwissenschaftliche_Fakultaet/Psychologie/AAP/gpower/GPowerMac_#{version}.zip"
  appcast 'http://www.gpower.hhu.de/'
  name 'G*Power'
  homepage 'http://www.gpower.hhu.de/'

  app 'G*Power.app'
end
